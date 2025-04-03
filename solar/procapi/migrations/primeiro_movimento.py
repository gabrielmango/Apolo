from datetime import datetime

import pandas as pd
from pymongo import MongoClient

from utils.ambientes import string_procapi
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def get_processos(ambiente):
    logging.info('Buscando processos...')
    client = MongoClient(string_procapi[ambiente])
    db = client['dbprocapi']
    collection = db.processo

    dados_filtrados = [
        {
            'numero': processo.get('numero'),
            'id': processo.get('id'),
        }
        for processo in collection.find(
            {},  # {'data_primeiro_movimento': {'$exists': True, '$ne': None}},
            {'_id': 1},
        )
    ]

    logging.info(f'Processos encontrados: {len(dados_filtrados)}')
    return pd.DataFrame(dados_filtrados)


def main(ambiente: str = 'preprod'):
    processos = get_processos(ambiente)


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
