import json
from datetime import datetime

from bson import DBRef, ObjectId
from pymongo import MongoClient

from utils.ambientes import string_procapi


def json_serializable(obj):
    if isinstance(obj, datetime):
        return obj.isoformat()
    if isinstance(obj, DBRef):
        return {'_ref': str(obj)}
    return None  # Ignora ObjectId ao serializar


def remover_objectid(avisos):
    """Remove campos do tipo ObjectId de cada aviso."""
    avisos_sem_objectid = []
    for aviso in avisos:
        if isinstance(aviso, dict):
            aviso_limpo = {
                k: v for k, v in aviso.items() if not isinstance(v, ObjectId)
            }
            avisos_sem_objectid.append(aviso_limpo)
    return avisos_sem_objectid


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


def parse_datetime(value):
    """Converte o campo cadastrado_em para datetime, se necessário."""
    if isinstance(value, datetime):
        return value
    if isinstance(value, str):
        try:
            return datetime.fromisoformat(value)
        except ValueError:
            return (
                datetime.min
            )  # Retorna uma data mínima caso o formato seja inválido
    return datetime.min  # Retorna uma data mínima para casos inesperados


def remove_duplicate_avisos(mongo_uri):
    client = MongoClient(mongo_uri)
    db = client['dbprocapi']
    collection = db.aviso

    pipeline = [
        {
            '$group': {
                '_id': '$numero',
                'dups': {'$push': '$$ROOT'},
                'count': {'$sum': 1},
            }
        },
        {'$match': {'count': {'$gt': 1}}},
    ]

    duplicates = collection.aggregate(pipeline)
    to_delete = []

    for doc in duplicates:
        sorted_docs = sorted(
            doc['dups'],
            key=lambda x: parse_datetime(x['cadastrado_em']),
            reverse=True,
        )
        to_keep = sorted_docs[0]
        to_remove = sorted_docs[1:]

        to_delete.extend(to_remove)

    if to_delete:
        salvar_avisos_em_json(
            to_delete, 'solar/procapi/deleted_avisos_prod_20250401.json'
        )
        collection.delete_many(
            {'_id': {'$in': [doc['_id'] for doc in to_delete]}}
        )

    client.close()


remove_duplicate_avisos(string_procapi.get('prod'))
