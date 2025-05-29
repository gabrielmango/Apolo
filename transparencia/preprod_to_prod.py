import gridfs
import pandas as pd
from pymongo import MongoClient

from database import executar_query
from utils.ambientes import string_fileserver, string_mongo_fileserver
from utils.mongo_files import MigradorGridFS
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def retorna_transparencia():
    ...


def retorna_anexos():
    ...


def retorna_uuids():
    transparencias = retorna_transparencia()
    anexos = retorna_anexos()

    uuids = pd.merge(
        transparencias,
        anexos,
        left_on='co_uuid',
        right_on='co_uuid',
        how='inner',
    )

    uuids.to_sql(
        'tb_transparencias_anexos',
        con=string_fileserver.get('preprod'),
        schema='public',
        index=False,
        if_exists='replace',
    )


def main():
    migrador = MigradorGridFS(string_mongo_fileserver.get('preprod'), 'file')


if __name__ == '__main__':
    from datetime import datetime

    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    logging.info(
        f'Tempo de execução: {str(end_time - start_time).split(".")[0]}'
    )
    logging.info('Processo finalizado')
