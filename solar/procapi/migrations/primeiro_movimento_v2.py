from concurrent.futures import ThreadPoolExecutor
from datetime import datetime

import pandas as pd
from pymongo import MongoClient

from utils.ambientes import string_base, string_procapi
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


class ProcessoPrimeiroMovimento:
    def __init__(self, ambiente):
        self._ambiente = ambiente
        self.client = MongoClient(string_procapi[self._ambiente])
        self.db = self.client['dbprocapi']
        self.eventos = self._get_eventos()

    def _get_eventos(self):
        logging.info(
            'Agregando dados de eventos para definir data_primeiro_movimento...'
        )
        collection = self.db.processo

        pipeline = [
            {'$match': {'data_primeiro_movimento': {'$exists': False}}},
            {
                '$lookup': {
                    'from': 'evento',
                    'let': {'processoId': '$_id'},
                    'pipeline': [
                        {
                            '$match': {
                                '$expr': {'$eq': ['$processo', '$$processoId']}
                            }
                        },
                        {'$sort': {'data_protocolo': 1}},
                        {'$limit': 1},
                    ],
                    'as': 'primeiro_evento',
                }
            },
            {
                '$addFields': {
                    'data_primeiro_movimento': {
                        '$ifNull': [
                            {
                                '$arrayElemAt': [
                                    '$primeiro_evento.data_protocolo',
                                    0,
                                ]
                            },
                            None,
                        ]
                    }
                }
            },
            {'$project': {'processo': '$_id', 'data_primeiro_movimento': 1}},
        ]

        eventos = list(collection.aggregate(pipeline))
        logging.info(f'Eventos (ou ausência deles) agregados: {len(eventos)}')
        return eventos

    def atualizar_processo(self, item):
        collection = self.db.processo

        processo_ref = item['processo']
        data_primeiro_movimento = item.get('data_primeiro_movimento', None)

        filtro = {'_id': processo_ref}
        atualizacao = {
            '$set': {
                'data_primeiro_movimento': data_primeiro_movimento,
                'modificado_em': datetime.now(),
            }
        }

        collection.update_one(filtro, atualizacao)
        #logging.info(f'Processo {processo_ref} atualizado.')

    def executa_migration(self, tamanho_lote: int = 1000):
        logging.info('Iniciando migração em lotes...')
        eventos = self.eventos

        for i in range(0, len(eventos), tamanho_lote):
            lote = eventos[i:i + tamanho_lote]
            logging.info(f'Processando lote {i // tamanho_lote + 1} com {len(lote)} registros.')

            with ThreadPoolExecutor(max_workers=tamanho_lote) as executor:
                executor.map(self.atualizar_processo, lote)


def main(ambiente: str):
    logging.info(f'Executando script em {ambiente}')

    processos_primeiro_movimento = ProcessoPrimeiroMovimento(ambiente)
    processos_primeiro_movimento.executa_migration()


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()
    for ambiente in ['dev', 'tst', 'hml', 'preprod']:
        main(ambiente)

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
