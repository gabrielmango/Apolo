from datetime import datetime
from pprint import pprint
from threading import Thread

from pymongo import MongoClient

from utils.ambientes import string_procapi


def get_proxima_versao(hist_collection, documento_id):
    ultimo = hist_collection.find_one(
        {'documento_id': documento_id}, sort=[('versao', -1)]
    )
    return ultimo['versao'] + 1 if ultimo else 1


def get_ultima_versao_log(hist_collection, documento_id):
    return hist_collection.find_one(
        {'documento_id': documento_id}, sort=[('versao', -1)]
    )


def banco_hist(ambiente, colecao):
    client = MongoClient(string_procapi.get(ambiente))
    db = client['dbprocapi']
    return db[colecao + '_hist']


def monitor_collection(ambiente, colecao):
    client = MongoClient(string_procapi.get(ambiente))
    db = client['dbprocapi']
    collection = db[colecao]
    collection_hist = banco_hist('dev', colecao)

    print(f"Escutando mudanças na coleção '{colecao}'...")

    with collection.watch(full_document='updateLookup') as stream:
        for change in stream:
            operacao = change['operationType']
            timestamp = change.get('wallTime', datetime.utcnow())
            doc_id = change['documentKey']['_id']

            versao = get_proxima_versao(collection_hist, doc_id)

            log_base = {
                'acao': operacao,
                'documento_id': doc_id,
                'data': timestamp,
                'versao': versao,
            }

            if operacao == 'insert':
                documento = change.get('fullDocument', {})
                log = {**log_base, 'documento': documento}
                collection_hist.insert_one(log)
                print(
                    f"Coleção {colecao}: Registro {log_base['documento_id']} inserido!"
                )

            elif operacao == 'update':
                updated_fields = change['updateDescription'].get(
                    'updatedFields', {}
                )
                removed_fields = change['updateDescription'].get(
                    'removedFields', []
                )
                documento = change.get('fullDocument', {})
                log = {
                    **log_base,
                    'documento': documento,
                    'campos_atualizados': updated_fields,
                    'campos_removidos': removed_fields,
                }
                collection_hist.insert_one(log)
                print(
                    f"Coleção {colecao}: Registro {log_base['documento_id']} atualizado para v{versao}"
                )

            elif operacao == 'delete':
                ultimo_documento = get_ultima_versao_log(
                    collection_hist, doc_id
                )
                log = {
                    **log_base,
                    'documento': ultimo_documento['documento']
                    if ultimo_documento
                    else None,
                }
                collection_hist.insert_one(log)
                print(
                    f'Coleção {colecao}: Registro {doc_id} deletado! Última versão armazenada.'
                )


def main(ambiente, colecao=None):
    client = MongoClient(string_procapi.get(ambiente))
    db = client['dbprocapi']

    if colecao:
        # Modo single collection
        monitor_collection(ambiente, colecao)
    else:
        # Modo todas as coleções
        collections = [
            col
            for col in db.list_collection_names()
            if not col.endswith('_hist')
        ]

        print(f'Iniciando monitoramento para {len(collections)} coleções:')
        for col in collections:
            print(f' - {col}')

        threads = []
        for col in collections:
            t = Thread(target=monitor_collection, args=(ambiente, col))
            t.daemon = True
            t.start()
            threads.append(t)

        # Manter o programa rodando
        for t in threads:
            t.join()


if __name__ == '__main__':
    # Para monitorar uma coleção específica:
    # main('prod', 'aviso')

    # Para monitorar todas as coleções:
    main('prod', 'aviso')
