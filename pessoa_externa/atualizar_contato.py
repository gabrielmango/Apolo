from database import executar_query
from utils.ambientes import string_contato, string_pessoa_externa
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def valida_coluna_contato_externa(ambiente):
    query = f"""
        SELECT column_name
        FROM information_schema.columns
        WHERE table_schema = 'contato' and table_name = 'tb_email'
        AND column_name = 'fl_principal_pessoa_externa';
    """

    result = executar_query(True, query, string_contato[ambiente])

    if result:
        return True
    return False


def main(ambiente: str = 'tst'):

    if valida_coluna_contato_externa(ambiente):
        logging.info(
            'Coluna fl_principal_pessoa_externa já existe na tabela tb_email'
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
