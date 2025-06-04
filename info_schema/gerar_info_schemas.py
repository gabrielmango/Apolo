import logging
import os
from datetime import datetime
from functools import wraps

import pandas as pd
from dotenv import dotenv_values
from sqlalchemy import create_engine


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


class GeraInfoSchemas:
    def __init__(self):
        self.config = dotenv_values('.env_database')

    def retorna_bancos(self, string_conn: str):
        engine = create_engine(string_conn)
        query = """
            SELECT a.datname as banco
            FROM pg_database a 
            WHERE a.datistemplate = false
            ORDER BY a.datname;
        """
        with engine.connect() as conn:
            df = pd.read_sql_query(query, conn)
            return df['banco'].tolist() if 'banco' in df.columns else []

    def retorna_schemas(self, string_conn: str, nome_banco: str):
        engine_base = create_engine(string_conn)
        new_engine = create_engine(engine_base.url.set(database=nome_banco))
        query = """
            SELECT schema_name AS schema
            FROM information_schema.schemata
            WHERE schema_name NOT IN (
                'pg_toast', 
                'pg_catalog', 
                'information_schema'
            ) 
            order by schema_name;
        """
        with new_engine.connect() as conn:
            df = pd.read_sql_query(query, conn)
            return df['banco'].tolist() if 'banco' in df.columns else []


handler = LogHandler(__file__)


@handler
def main():
    gerar_info_schema = GeraInfoSchemas()
    for projeto, conn in gerar_info_schema.config.items():
        print(projeto)
        print(conn)


if __name__ == '__main__':
    main()
