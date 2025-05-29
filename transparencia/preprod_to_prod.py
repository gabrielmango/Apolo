import gridfs
from pymongo import MongoClient

from database import executar_query
from utils.ambientes import string_fileserver, string_mongo_fileserver
from utils.mongo_files import GerenciadorPDFMongo
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def retorna_uuids():
    return [
        data['uuid']
        for data in executar_query(
            True,
            """
            select co_uuid_anexo_mongo as uuid
            from fileserver.tb_anexo t1
            where co_tipo_documento in (
                select co_seq_tipo_documento
                from fileserver.tb_tipo_documento t2
                where t2.sg_tipo_documento like '%TRA-%'
            );
            """,
            string_fileserver.get('preprod'),
        )
    ]


def main():
    arquivos_preprod = GerenciadorPDFMongo(
        'file', string_mongo_fileserver.get('preprod')
    )
    arquivos_prod = GerenciadorPDFMongo(
        'file', string_mongo_fileserver.get('prod')
    )
    arquivos = retorna_uuids()

    for arquivo in arquivos:
        arquivos_preprod.ler_pdf(
            arquivo, 'TRA', rf'transparencia\temp\{arquivo}'
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
