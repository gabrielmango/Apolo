
from datetime import datetime
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def main(ambiente: str = 'prod'):
    ...

if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main('prod')

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
