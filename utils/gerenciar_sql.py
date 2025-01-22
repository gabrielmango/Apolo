def salvar_em_sql(string, nome_arquivo):

    if '.sql' not in nome_arquivo:
        nome_arquivo = nome_arquivo + '.sql'

    string = string + '\n'

    try:
        with open(nome_arquivo, 'a+', encoding='utf-8') as arquivo:
            arquivo.write(string)
    except Exception as e:
        print(f'Erro ao salvar o arquivo .sql: {e}')
