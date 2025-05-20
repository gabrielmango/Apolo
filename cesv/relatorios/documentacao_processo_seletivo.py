import pandas as pd

from database import executar_query, list_to_sql
from utils.ambientes import (string_cesv, string_contato, string_fileserver,
                             string_geral_pessoa, string_localizacao)
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


def main(ambiente: str = 'prod'):

    logging.info(f'Buscando candidaturas rascunho em {ambiente}')

    logging.info(f'Processo finalizado em {ambiente}')


if __name__ == '__main__':
    from datetime import datetime

    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    tempo_execucao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {tempo_execucao}')
    logging.info('Processo finalizado\n')
