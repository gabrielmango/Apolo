from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def main():
    ...


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
