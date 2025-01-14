import base64
import os
import re

import pandas as pd

from move_fileserver_files import engine_bohr

ANEXOS_MONGODB_QUERY = """
select nome, "data" as base64
from mongodb.mongo_documento_atendimento;
"""


def gera_lista_base64():
    with engine_bohr.connect() as conn:
        anexos = pd.read_sql_query(ANEXOS_MONGODB_QUERY, conn)

    return anexos.to_dict(orient='records')


def is_base64(s):
    try:
        decoded = base64.b64decode(s, validate=True)
        return base64.b64encode(decoded).decode() == s.strip()
    except Exception:
        return False


def base64_to_pdf(base64_text, output_file):
    """
    Converte um texto Base64 para um arquivo PDF.
    Corrige automaticamente a string Base64 caso ela falte padding.
    """
    try:
        # Verifica se a string Base64 é válida
        if not is_base64(base64_text):
            print('Erro: A string fornecida não é uma Base64 válida.')
            return

        # Adiciona padding para garantir que a string Base64 seja válida
        base64_text = (
            base64_text + '=' * (4 - len(base64_text) % 4)
            if len(base64_text) % 4 != 0
            else base64_text
        )

        # Decodifica o texto Base64
        pdf_data = base64.b64decode(base64_text)

        # Verifica se o diretório de saída existe, se não, cria
        os.makedirs(os.path.dirname(output_file), exist_ok=True)

        # Salva o arquivo PDF
        with open(output_file, 'wb') as pdf_file:
            pdf_file.write(pdf_data)

        print(f'Arquivo {output_file} salvo com sucesso!')
    except Exception as e:
        print(f'Erro ao converter Base64 para PDF: {e}')


def compare_pdfs(file1, file2):
    """
    Compara dois arquivos PDF e retorna True se forem idênticos.
    """
    try:
        with open(file1, 'rb') as pdf1, open(file2, 'rb') as pdf2:
            return pdf1.read() == pdf2.read()
    except Exception as e:
        print(f'Erro ao comparar PDFs: {e}')
        return False


def process_and_find_duplicates(base64_list):
    """
    Processa uma lista de Base64, salva os arquivos PDF em uma pasta e identifica duplicatas.

    Args:
        base64_list (list): Lista de dicionários com 'base64' e 'nome' como chaves.

    Returns:
        list: Lista de nomes de arquivos que são duplicados.
    """
    folder = 'arquivos'

    # Cria a pasta 'arquivos' se não existir
    if not os.path.exists(folder):
        os.makedirs(folder)

    file_paths = []
    for item in base64_list:

        print(item['nome'])

        file_name = item['nome']
        file_path = os.path.join(folder, file_name)

        # Converte e salva o PDF
        base64_to_pdf(item['base64'], file_path)

        # Verifica se o arquivo foi salvo corretamente
        if os.path.exists(file_path):
            file_paths.append(file_path)
        else:
            print(f'Erro ao salvar o arquivo: {file_name}')

    # Identifica duplicados
    duplicates = []
    for i in range(len(file_paths)):
        for j in range(i + 1, len(file_paths)):
            if compare_pdfs(file_paths[i], file_paths[j]):
                duplicates.append(
                    (
                        os.path.basename(file_paths[i]),
                        os.path.basename(file_paths[j]),
                    )
                )

    return duplicates


def salvar_pdf_base64(base64_string, nome_arquivo='arquivo.pdf'):
    if base64_string.startswith('\\x25\\x50\\x44\\x46'):
        base64_string = base64_string.replace('\\x', '')

        pdf_data = base64.b64decode(base64_string)

        with open(nome_arquivo, 'wb') as f:
            f.write(pdf_data)
        print(f'PDF salvo como {nome_arquivo}')
    else:
        print('A string fornecida não corresponde a um arquivo PDF.')


def main():
    base64_list = gera_lista_base64()

    for item in base64_list:
        salvar_pdf_base64(item['base64'], item['nome'])


if __name__ == '__main__':
    from datetime import datetime

    start_time = datetime.now()
    main()
    end_time = datetime.now()
    full_time = end_time - start_time
    full_time = str(full_time).split('.')[0]
    print(f'Tempo de execução: {full_time}')
