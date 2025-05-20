import pandas as pd

from database import executar_query
from utils.ambientes import string_usuario_externo
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def retorna_usuarios_externos(ambiente):
    return pd.DataFrame(
        executar_query(
            True,
            """
            select co_uuid 
            from usuarioexterno.tb_pessoa_externa tpe ;
        """,
            string_usuario_externo.get(ambiente),
        )
    )


def main(ambiente: str = 'prod'):

    logging.info(f'Geracao de relatório iniciado em {ambiente}!')

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
