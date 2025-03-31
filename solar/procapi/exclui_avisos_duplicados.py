import json

from pymongo import MongoClient

from utils.ambientes import string_procapi


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
            doc['dups'], key=lambda x: x['cadastrado_em'], reverse=True
        )
        to_keep = sorted_docs[0]
        to_remove = sorted_docs[1:]

        to_delete.extend(to_remove)

    if to_delete:
        with open(
            'solar/procapi/deleted_avisos.json', 'w', encoding='utf-8'
        ) as f:
            json.dump(to_delete, f, default=str, indent=4)

        collection.delete_many(
            {'_id': {'$in': [doc['_id'] for doc in to_delete]}}
        )

    client.close()


remove_duplicate_avisos(string_procapi.get('dev'))
