import docx

def docx_para_sql(docx_path, sql_output_path):
    doc = docx.Document(docx_path)
    entries = []
    
    current_title = ""
    current_desc = ""
    current_sol = ""
    lendo_solucao = False

    for para in doc.paragraphs:
        text = para.text.strip()
        if not text:
            continue
            
        # Detecta se o parágrafo é um título (ex: usa estilo 'Heading' ou começa com "Erro:")
        is_heading = para.style.name.startswith('Heading') or text.lower().startswith(('erro:', 'erro -', 'bug:'))
        
        if is_heading:
            if current_title:
                entries.append({
                    'titulo': current_title,
                    'descricao': current_desc.strip(),
                    'solucao': current_sol.strip()
                })
                current_desc = ""
                current_sol = ""
                lendo_solucao = False
                
            current_title = text.replace('Erro:', '').replace('ERRO:', '').strip()
        
        elif 'solução:' in text.lower() or 'solucao:' in text.lower() or 'resolução:' in text.lower():
            lendo_solucao = True
            # Adiciona o texto após a palavra "Solução:" se houver
            partes = text.split(':', 1)
            if len(partes) > 1 and partes[1].strip():
                current_sol += partes[1].strip() + "\n"
        else:
            if lendo_solucao:
                current_sol += text + "\n"
            else:
                current_desc += text + "\n"

    # Adiciona o último erro processado
    if current_title:
        entries.append({
            'titulo': current_title,
            'descricao': current_desc.strip(),
            'solucao': current_sol.strip()
        })

    # Escreve o arquivo SQL
    with open(sql_output_path, 'w', encoding='utf-8') as f:
        f.write("USE kb_erros;\n\n")
        for item in entries:
            titulo = item['titulo'].replace("'", "''")
            descricao = item['descricao'].replace("'", "''")
            solucao = item['solucao'].replace("'", "''")
            
            sql = f"INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('{titulo}', 'Geral', '{descricao}', '{solucao}');\n"
            f.write(sql)
            
    print(f"Sucesso! {len(entries)} erros convertidos para {sql_output_path}")

# Executa a conversão
docx_para_sql('erros.docx', 'import.sql')