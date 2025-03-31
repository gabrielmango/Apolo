from datetime import datetime

import pandas as pd
from pymongo import MongoClient

from utils.ambientes import string_procapi
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


class SolarService:
    def __init__(self, ambiente: str = 'prod'):
        logging.info('Inicializando Serviço Solar...')
        self._ambiente = ambiente
        self.avisos = self._get_avisos()

    def _get_avisos(self):
        logging.info('Buscando avisos...')

        try:
            client = MongoClient(string_procapi.get(self._ambiente))
            db = client['dbprocapi']
            collection = db.aviso

            avisos = [
                {
                    'numero_aviso': processo.get('numero'),
                    'numero_processo': processo.get('processo').get('numero'),
                    'modificado_em': processo.get('modificado_em'),
                    'situacao': processo.get('situacao'),
                }
                for processo in collection.find()
            ]

            logging.info('Avisos buscados com sucesso.')
            logging.info(f'Avisos encontrado: {len(avisos)}')
            return pd.DataFrame(avisos)

        except Exception as e:
            logging.error(f'Erro ao buscar avisos: {e}')
            return pd.DataFrame()
        finally:
            client.close()


def main():

    solar_service = SolarService()
    avisos_df = solar_service.avisos


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
