import json
from datetime import datetime


def salvar_em_json(lista, nome_arquivo):
    try:
        with open(nome_arquivo, 'w', encoding='utf-8') as arquivo:
            json.dump(lista, arquivo, ensure_ascii=False, indent=4)
    except Exception as e:
        print(f'Erro ao salvar o arquivo JSON: {e}')


def carregar_de_json(nome_arquivo):
    try:
        with open(nome_arquivo, 'r', encoding='utf-8') as arquivo:
            dados = json.load(arquivo)
        return dados
    except Exception as e:
        print(f'Erro ao carregar o arquivo JSON: {e}')
        return []

def salvar_avisos_em_json(avisos_lista, arquivo='avisos.json'):
    if avisos_lista:
        for aviso in avisos_lista:
            aviso.pop('_id', None)
            for chave, valor in aviso.items():
                if isinstance(valor, datetime):
                    aviso[chave] = valor.isoformat()
        
        try:
            with open(arquivo, 'r', encoding='utf-8') as f:
                dados_existentes = json.load(f)
        except (FileNotFoundError, json.JSONDecodeError):
            dados_existentes = []
        
        dados_existentes.extend(avisos_lista)
        
        with open(arquivo, 'w', encoding='utf-8') as f:
            json.dump(dados_existentes, f, ensure_ascii=False, indent=4)
            
        print(f"{len(avisos_lista)} novos avisos adicionados ao arquivo {arquivo}.")


