from datetime import datetime

import pandas as pd
from pymongo import MongoClient

from utils.ambientes import string_procapi
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


class ProcessoPrimerioMovimento:
    def __init__(self, ambiente: str = 'preprod'):
        self._ambiente = ambiente
        self.processos = self._get_processos()
        self.eventos = self._get_eventos()

    def _get_processos(self):
        logging.info('Buscando processos...')

        client = MongoClient(string_procapi[self._ambiente])
        db = client['dbprocapi']
        collection = db.processo

        processos = [
            {'id': processo.get('id')}
            for processo in collection.find(
                {'data_primeiro_movimento': {'$exists': True, '$ne': None}},
                {'_id': 1},
            )
        ]

        logging.info(f'Processos encontrados: {len(processos)}')
        return pd.DataFrame(processos)

    def _get_eventos(self):
        logging.info('Buscando eventos...')

        client = MongoClient(string_procapi[self._ambiente])
        db = client['dbprocapi']
        collection = db.evento

        pipeline = [
            {'$sort': {'data_protocolo': 1}},
            {
                '$group': {
                    '_id': '$processo',
                    'data_protocolo': {'$first': '$data_protocolo'},
                    'documento': {'$first': '$$ROOT'},
                }
            },
            {
                '$replaceRoot': {
                    'newRoot': {
                        'processo': '$_id',
                        'data_protocolo': '$data_protocolo',
                    }
                }
            },
        ]

        eventos = list(collection.aggregate(pipeline))

        logging.info(
            f'Eventos distintos por processo encontrados: {len(eventos)}'
        )
        return pd.DataFrame(eventos)


def main(ambiente: str = 'preprod'):
    logging.info(f'Executando script em {ambiente}')

    processos_primerio_movimento = ProcessoPrimerioMovimento(ambiente)


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
