import gridfs
import pandas as pd
from pymongo import MongoClient

from database import executar_query
from utils.ambientes import string_fileserver, string_mongo_fileserver
from utils.mongo_files import GerenciadorPDFMongo
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def main():
    arquivos_preprod = GerenciadorPDFMongo(
        'file', string_mongo_fileserver.get('preprod')
    )

    arquivos_preprod.migrar_arquivos(
        outra_uri=string_mongo_fileserver.get('preprod'),
        outra_banco='file',
        colecao_origem='TRA',
        colecao_destino='TESTE',
    )


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
