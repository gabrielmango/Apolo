import pandas as pd

from database import executar_query
from utils.ambientes import (string_fileserver, string_mongo_fileserver,
                             string_transparencia)
from utils.mongo_files import MigradorGridFS
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def retorna_transparencia():
    return pd.DataFrame(
        executar_query(
            True,
            """
            select 
                no_transparencia,
                co_uuid 
            from transparencia.tb_transparencia t
            where t.st_ativo;
            """,
            string_transparencia.get('preprod'),
        )
    )


def retorna_anexos():
    return pd.DataFrame(
        executar_query(
            True,
            """
            select 
                co_uuid_2 as co_uuid,
                co_uuid_anexo_mongo 
            from fileserver.tb_anexo t1
            where t1.st_ativo and t1.co_tipo_documento in (
                select co_seq_tipo_documento 
                from fileserver.tb_tipo_documento t2
                where t2. st_ativo and t2.sg_tipo_documento like '%TRA-%'
            );
            """,
            string_fileserver.get('preprod'),
        )
    )


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
        con=string_transparencia.get('preprod'),
        schema='public',
        index=False,
        if_exists='replace',
    )

    return uuids


def main():
    migrador = MigradorGridFS(string_mongo_fileserver.get('preprod'), 'file')
    dados = retorna_uuids()

    for index, row in dados.iterrows():
        migrador.migrar_arquivos_por_filename(
            row['co_uuid_anexo_mongo'],
            'TRA',
            string_mongo_fileserver.get('preprod'),
            'file',
            'TESTE',
        )

        logging.info(f"Arquivo '{row['co_uuid_anexo_mongo']}' migrado.")


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
