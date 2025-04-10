from datetime import datetime

from pymongo import MongoClient

from database import executar_query, list_to_sql
from utils.ambientes import string_base, string_procapi, string_solar
from utils.gerenciar_json import salvar_avisos_em_json
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)

varas = [
    'Avisos 3ª Vara Cível da Comarca de Belo Horizonte',
    'Avisos 1ª Vara Criminal da Infância e da Juventude da Comarca de Manhuaçu',
]


def main(ambiente: str = 'prod'):
    for vara in varas:
        ...


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
