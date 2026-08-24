import zipfile
import xml.etree.ElementTree as ET
import sys

# Arquivos de entrada e saída
DOCX_FILE = 'erros.docx'
SQL_FILE = 'import.sql'

def extract_paragraphs(docx_path):
    try:
        with zipfile.ZipFile(docx_path) as z:
            xml_content = z.read('word/document.xml')
    except Exception as e:
        print(f"Erro ao abrir o arquivo DOCX '{docx_path}': {e}")
        sys.exit(1)

    root = ET.fromstring(xml_content)
    paragraphs = []
    
    # Extrai todo o texto dentro das tags de parágrafo <w:p> do Word
    for p in root.iter('{http://schemas.openxmlformats.org/wordprocessingml/2006/main}p'):
        texts = [node.text for node in p.iter('{http://schemas.openxmlformats.org/wordprocessingml/2006/main}t') if node.text]
        full_text = "".join(texts).strip()
        if full_text:
            paragraphs.append(full_text)
            
    return paragraphs

def generate_sql():
    paragraphs = extract_paragraphs(DOCX_FILE)
    entries = []
    current_title = None
    current_lines = []

    for text in paragraphs:
        # Identifica se a linha é um título (curta, sem ponto final e sem ser URL)
        is_heading = len(text) < 70 and not text.endswith('.') and not text.startswith('http')
        
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
            # Escapa aspas simples e barras invertidas para sintaxe do MySQL
            clean_title = title.replace("\\", "\\\\").replace("'", "''")
            clean_content = content.replace("\\", "\\\\").replace("'", "''")
            
            # INSERT IGNORE evita falhas por duplicidade de chave/índice único na tabela 'erros'
            sql = f"INSERT IGNORE INTO erros (titulo, categoria, tags, descricao, solucao) VALUES ('{clean_title}', 'Guias', 'docx, importado', 'Importado via script', '{clean_content}');\n"
            f.write(sql)

    print(f"Sucesso! Gerado '{SQL_FILE}' com {len(entries)} registros.")

if __name__ == '__main__':
    generate_sql()