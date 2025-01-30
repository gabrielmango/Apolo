from database import lista_dados_consulta
from utils.ambientes import string_base
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)

CONSULTA_TODOS_BANCOS = """
SELECT a.datname as database
FROM pg_database a 
WHERE a.datistemplate = false
ORDER BY a.datname;
"""


def main():

    for key, value in string_base.items():
        bancos = lista_dados_consulta(value, CONSULTA_TODOS_BANCOS)


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
