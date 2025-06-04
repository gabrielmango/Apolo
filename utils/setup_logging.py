import logging
import os
from datetime import datetime
from functools import wraps
from pathlib import Path


def setup_logging(nome):
    script_name = os.path.basename(nome)
    log_folder = 'logs'
    log_file = f'{log_folder}/{script_name}.log'

    if not os.path.exists(log_folder):
        os.makedirs(log_folder)

    logging.basicConfig(
        level=logging.INFO,
        format='%(asctime)s - %(levelname)s - %(message)s',
        handlers=[
            logging.FileHandler(log_file, encoding='utf-8'),
            logging.StreamHandler(),
        ],
    )


class LogHandler:
    def __init__(self, name=None, logger_name=None):
        self.script_name = (
            str(os.path.basename(name)).replace('.py', '')
            if name
            else 'unknown'
        )
        self.log_folder = 'logs'
        self.date_folder = str(datetime.now())[:10].replace('-', '_')
        self.log_file = (
            f'{self.log_folder}/{self.date_folder}/{self.script_name}.log'
        )
        self._cria_pasta_logs()
        self._configura_logs()

        self.logger = (
            logging.getLogger(logger_name)
            if logger_name
            else logging.getLogger()
        )

    def _cria_pasta_logs(self):
        log_dir = os.path.dirname(self.log_file)
        if not os.path.exists(log_dir):
            os.makedirs(log_dir)

    def _configura_logs(self):
        logging.basicConfig(
            level=logging.INFO,
            format='%(asctime)s - %(levelname)s - %(message)s',
            handlers=[
                logging.FileHandler(self.log_file, encoding='utf-8'),
                logging.StreamHandler(),
            ],
        )

    def __call__(self, func):
        @wraps(func)
        def wrapped(*args, **kwargs):
            return self.execute(func, *args, **kwargs)

        return wrapped

    def execute(self, func, *args, **kwargs):
        self.logger.info('Processo iniciado.')
        start_time = datetime.now()

        try:
            result = func(*args, **kwargs)
            self.logger.info('Processo concluído com sucesso.')
            return result
        except Exception as e:
            self.logger.error(f'Erro inesperado: {str(e)}', exc_info=True)
        finally:
            end_time = datetime.now()
            duration = end_time - start_time
            self.logger.info(f'Tempo de execução: {duration}')
            self.logger.info('Processo finalizado.\n')
