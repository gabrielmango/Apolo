import pandas as pd

from database import executar_query
from utils.ambientes import string_cesv, string_fileserver
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def retorna_processos_seletivos(ambiente, antigos=False):
    if antigos:
        return pd.DataFrame(
            executar_query(
                True,
                """
            select 
                t.ds_titulo_processo_seletivo,
                t.co_uuid 
            from 
                cesv.tb_processo_seletivo t
            where 
                t.st_ativo and t.fl_processo_seletivo_antigo; 
            """,
                string_cesv.get(ambiente),
            )
        )
    else:
        return pd.DataFrame(
            executar_query(
                True,
                """
            select 
                t.ds_titulo_processo_seletivo,
                t.co_uuid 
            from 
                cesv.tb_processo_seletivo t
            where 
                t.st_ativo and t.fl_processo_seletivo_antigo is false; 
            """,
                string_cesv.get(ambiente),
            )
        )


def retorna_documentos(ambiente):
    return pd.DataFrame(
        executar_query(
            True,
            """
            select 
                t1.co_uuid_2 as co_uuid,
                t2.no_tipo_documento,
                t1.dh_criacao 
            from fileserver.tb_anexo t1
            left join fileserver.tb_tipo_documento t2
                on t1.co_tipo_documento = t2.co_seq_tipo_documento;
            """,
            string_fileserver.get(ambiente),
        )
    )


def retorna_documentacao_processo_seletivo(ambiente, antigos=False):

    logging.info(f'Buscando processos seletivos.')
    if antigos:
        processos_seletivos_antigos = retorna_processos_seletivos(
            ambiente, True
        )
    else:
        processos_seletivos_antigos = retorna_processos_seletivos(
            ambiente, False
        )

    logging.info(f'Buscando documentacao.')
    documentacao = retorna_documentos(ambiente)

    return pd.merge(
        processos_seletivos_antigos,
        documentacao,
        left_on='co_uuid',
        right_on='co_uuid',
        how='inner',
    )


def main(ambiente: str = 'prod'):

    logging.info(f'Geracao de relatório iniciado em {ambiente}!')

    relatorio = retorna_documentacao_processo_seletivo(ambiente, True)

    relatorio = relatorio.drop('co_uuid', axis=1)

    relatorio.to_sql(
        'relatorio',
        string_cesv.get(ambiente),
        schema='public',
        index=False,
        if_exists='replace',
    )

    logging.info(f'Processo finalizado em {ambiente}!')


if __name__ == '__main__':
    from datetime import datetime

    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    tempo_execucao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {tempo_execucao}')
    logging.info('Processo finalizado\n')
