import docx

def docx_para_sql(docx_path, sql_output_path):
    doc = docx.Document(docx_path)
    entries = []
    
    current_title = ""
    current_content = ""

    for para in doc.paragraphs:
        text = para.text.strip()
        if not text:
            continue

        # Checa se o parágrafo é um título (Heading, texto em negrito ou sem marcadores no início)
        is_bold = any(run.bold for run in para.runs if run.text.strip())
        is_heading = para.style.name.startswith('Heading') or is_bold

        # Se for um novo título
        if is_heading and len(text) < 120 and not text.startswith(('•', '-', '*')):
            if current_title and current_content:
                entries.append({
                    'titulo': current_title,
                    'solucao': current_content.strip()
                })
                current_content = ""
            current_title = text
        else:
            if current_title:
                current_content += text + "\n"

    # Salva o último tópico
    if current_title and current_content:
        entries.append({
            'titulo': current_title,
            'solucao': current_content.strip()
        })

    # Gera o arquivo import.sql
    with open(sql_output_path, 'w', encoding='utf-8') as f:
        f.write("USE kb_erros;\n\n")
        for item in entries:
            titulo = item['titulo'].replace("'", "''")
            solucao = item['solucao'].replace("'", "''")
            sql = f"INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('{titulo}', 'Procedimentos', '', '{solucao}');\n"
            f.write(sql)
            
    print(f"Sucesso! {len(entries)} tópicos extraídos para {sql_output_path}")

docx_para_sql('erros.docx', 'import.sql')