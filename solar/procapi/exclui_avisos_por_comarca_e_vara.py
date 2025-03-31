from datetime import datetime

import pandas as pd
from pymongo import MongoClient

from database import executar_query
from utils.ambientes import string_base, string_procapi, string_solar
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


class SolarService:
    def __init__(self, comarca: str, vara: str, ambiente: str = 'prod'):
        logging.info('Inicializando Serviço Solar...')
        self._ambiente = ambiente
        self._comarca = comarca
        self._vara = vara
        self.avisos = self._get_avisos()
        self.processos = self._get_processos()
        self.processos_com_avisos = self._get_processos_com_avisos()

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

    def _get_processos(self):
        logging.info('Buscando processos...')
        processos = executar_query(
            True,
            f"""
                SELECT 
                    pp.numero_puro as numero_processo,
                    cc.nome as comarca,
                    cv.nome as vara,
                    cd.nome as defensoria
                FROM processo_processo pp
                left join processo_parte pp2 on pp2.processo_id = pp.id
                left join contrib_defensoria cd on pp2.defensoria_id = cd.id
                left join contrib_comarca cc on pp.comarca_id = cc.id 
                left join contrib_vara cv on pp.vara_id = cv.id 
                order by pp.id desc;
            """,
            string_solar.get(self._ambiente),
        )

        logging.info('Processos buscados com sucesso.')
        logging.info(f'Processos encontrados: {len(processos)}')
        return pd.DataFrame(processos)

    def _get_processos_com_avisos(self):
        logging.info('Buscando processos com avisos...')
        processos_com_avisos = self.processos.merge(
            self.avisos,
            left_on='numero_processo',
            right_on='numero_processo',
            how='inner',
        )
        logging.info('Processos com avisos buscados com sucesso.')
        logging.info(
            f'Processos com avisos encontrados: {len(processos_com_avisos)}'
        )
        return processos_com_avisos


def main():

    solar_service = SolarService('Belo Horizonte', 'Cível')
    avisos_com_arquivados = solar_service.processos_com_avisos

    avisos_com_arquivados.to_sql(
        'processos_com_avisos',
        string_base.get('teste'),
        if_exists='replace',
        schema='solar',
        index=False,
    )


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
