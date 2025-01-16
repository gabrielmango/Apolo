import json


def salvar_em_json(lista, nome_arquivo):
    try:
        with open(nome_arquivo, 'w', encoding='utf-8') as arquivo:
            json.dump(lista, arquivo, ensure_ascii=False, indent=4)
        print(f'Dados salvos com sucesso no arquivo {nome_arquivo}.')
    except Exception as e:
        print(f'Erro ao salvar o arquivo JSON: {e}')
