import zipfile
import xml.etree.ElementTree as ET
import sys

DOCX_FILE = 'erros.docx'
SQL_FILE = 'import.sql'

def extract_structured_paragraphs(docx_path):
    try:
        with zipfile.ZipFile(docx_path) as z:
            xml_content = z.read('word/document.xml')
    except Exception as e:
        print(f"Erro ao abrir o arquivo DOCX '{docx_path}': {e}")
        sys.exit(1)

    root = ET.fromstring(xml_content)
    paragraphs = []
    
    # Namespaces do OOXML
    ns = {
        'w': 'http://schemas.openxmlformats.org/wordprocessingml/2006/main'
    }

    for p in root.iter('{http://schemas.openxmlformats.org/wordprocessingml/2006/main}p'):
        # Verifica estilo do parágrafo no Word
        pStyle = p.find('.//w:pStyle', ns)
        style_val = pStyle.attrib.get('{http://schemas.openxmlformats.org/wordprocessingml/2006/main}val', '') if pStyle is not None else ''

        texts = [node.text for node in p.iter('{http://schemas.openxmlformats.org/wordprocessingml/2006/main}t') if node.text]
        full_text = "".join(texts).strip()
        
        if full_text:
            # Identifica se é um Heading/Título nativo do Word
            is_word_heading = 'heading' in style_val.lower() or 'título' in style_val.lower() or 'titulo' in style_val.lower()
            paragraphs.append({'text': full_text, 'is_heading_style': is_word_heading})
            
    return paragraphs

def generate_sql():
    paragraphs = extract_structured_paragraphs(DOCX_FILE)
    entries = []
    current_title = None
    current_lines = []

    # Se o documento usa estilos Heading nativos do Word
    has_native_headings = any(p['is_heading_style'] for p in paragraphs)

    for p in paragraphs:
        text = p['text']
        is_heading_style = p['is_heading_style']

        if has_native_headings:
            # Estratégia 1: Confia estritamente nos estilos de Título do Word
            is_heading = is_heading_style
        else:
            # Estratégia 2: Heurística melhorada (descarta marcadores, parênteses, comandos e explicações)
            is_bullet_or_note = text.startswith(('(', '•', '-', '1º', '2º', '3º', 'http', 'ssh-', 'git', 'docker', 'systemctl'))
            is_short = len(text) < 70
            has_no_end_punct = not text.endswith(('.', ':', ';', ')'))
            
            is_heading = is_short and has_no_end_punct and not is_bullet_or_note

        if is_heading:
            if current_title:
                entries.append((current_title, "\n".join(current_lines)))
                current_lines = []
            current_title = text
        else:
            if not current_title:
                current_title = text
            else:
                current_lines.append(text)

    if current_title:
        entries.append((current_title, "\n".join(current_lines)))

    with open(SQL_FILE, 'w', encoding='utf-8') as f:
        for title, content in entries:
            clean_title = title.replace("\\", "\\\\").replace("'", "''")
            clean_content = content.replace("\\", "\\\\").replace("'", "''")
            
            sql = f"INSERT IGNORE INTO erros (titulo, categoria, tags, descricao, solucao) VALUES ('{clean_title}', 'Guias', 'docx, importado', 'Importado via script', '{clean_content}');\n"
            f.write(sql)

    print(f"Sucesso! Gerado '{SQL_FILE}' com {len(entries)} registros agrupados corretamente.")

if __name__ == '__main__':
    generate_sql()