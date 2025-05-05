from sqlalchemy import text


def salvar_em_sql(string, nome_arquivo):

    if '.sql' not in nome_arquivo:
        nome_arquivo = nome_arquivo + '.sql'

    string = string + '\n'

    try:
        with open(nome_arquivo, 'a+', encoding='utf-8') as arquivo:
            arquivo.write(string)
    except Exception as e:
        print(f'Erro ao salvar o arquivo .sql: {e}')


def ler_arquivo_sql(nome_arquivo):
    if '.sql' not in nome_arquivo:
        nome_arquivo += '.sql'

    try:
        with open(nome_arquivo, 'r', encoding='utf-8') as arquivo:
            conteudo = arquivo.read()
        return conteudo
    except FileNotFoundError:
        print(f"Erro: O arquivo '{nome_arquivo}' não foi encontrado.")
        return None
    except Exception as e:
        print(f'Erro ao ler o arquivo .sql: {e}')
        return None
