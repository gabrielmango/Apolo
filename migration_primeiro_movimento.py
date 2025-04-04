import logging
from concurrent.futures import ThreadPoolExecutor
from datetime import datetime

from pymongo import MongoClient

logging.basicConfig(
    filename='migration_primeiro_movimento.log',
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
)


string_procapi = {'preprod': ''}


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
        logging.info(f'Processo {processo_ref} atualizado.')

    def executa_migration(self, quantidade: int = 100):
        logging.info('Iniciando migração...')
        eventos = self.eventos

        with ThreadPoolExecutor(max_workers=quantidade) as executor:
            executor.map(self.atualizar_processo, eventos)


def main(ambiente: str):
    logging.info(f'Executando script em {ambiente}')

    processos_primeiro_movimento = ProcessoPrimeiroMovimento(ambiente)
    processos_primeiro_movimento.executa_migration()


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main('preprod')

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
