import json
from datetime import datetime

from bson import DBRef, ObjectId


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


def json_serializable(obj):
    if isinstance(obj, datetime):
        return obj.isoformat()
    if isinstance(obj, DBRef):
        return {'_ref': str(obj)}
    return None  # Ignora ObjectId ao serializar


def remover_objectid(avisos):
    """Remove campos do tipo ObjectId de cada aviso."""
    for aviso in avisos:
        if isinstance(aviso, dict):
            aviso = {
                k: v for k, v in aviso.items() if not isinstance(v, ObjectId)
            }
    return avisos


def salvar_avisos_em_json(avisos_lista, arquivo='avisos.json'):
    if avisos_lista:
        avisos_lista = remover_objectid(
            avisos_lista
        )  # Remove ObjectId antes de salvar

        try:
            with open(arquivo, 'r', encoding='utf-8') as f:
                dados_existentes = json.load(f)
        except (FileNotFoundError, json.JSONDecodeError):
            dados_existentes = []

        dados_existentes.extend(avisos_lista)

        with open(arquivo, 'w', encoding='utf-8') as f:
            json.dump(
                dados_existentes,
                f,
                ensure_ascii=False,
                indent=4,
                default=json_serializable,
            )

        print(
            f'{len(avisos_lista)} novos avisos adicionados ao arquivo {arquivo}.'
        )
