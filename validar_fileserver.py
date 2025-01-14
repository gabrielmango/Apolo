import logging
import time
from concurrent.futures import ProcessPoolExecutor
from datetime import datetime
from time import sleep

import numpy as np
import pandas as pd
from dotenv import dotenv_values
from pymongo import MongoClient
from sqlalchemy import create_engine, text
from sqlalchemy.exc import OperationalError

config = dotenv_values('.env')
FILESERVER_MONGO_PREPROD = config['FILESERVER_MONGO_PREPROD']
FILESERVER_POSTGRES_PROD = config['FILESERVER_POSTGRES_PROD']
BASE_TESTE_POSTGRES = config['BASE_TESTE_POSTGRES']

engine_fileserver_prod = create_engine(FILESERVER_POSTGRES_PROD)
engine_teste = create_engine(BASE_TESTE_POSTGRES)

FILESERVER_QUERY = f"""
select 
	co_uuid_anexo_mongo, 
	st_ativo
from 
	fileserver.tb_anexo ta
order by co_seq_anexo asc;
"""

ANEXO_QUERY = f"""
select 
	co_uuid_anexo_mongo
from 
	public.tb_anexo_prod
where processado = false;
"""


def get_postgres_data(engine, query):
    with engine.connect() as conn:
        return pd.read_sql_query(query, conn)


def save_to_postgres(data, engine, table_name, schema):
    data.to_sql(
        table_name, con=engine, if_exists='append', index=False, schema=schema
    )


def connect_to_mongodb(uri, database):
    client = MongoClient(uri)
    return client[database]


def fetch_mongo_records(db, collections, data):
    for index, row in data.iterrows():
        co_uuid_anexo_mongo = row['co_uuid_anexo_mongo']
        result = None

        for collection_name in collections:
            if '.files' not in collection_name:
                continue

            files_collection = db[collection_name]
            query = {'filename': co_uuid_anexo_mongo}
            projection = {'filename': 1}
            result = files_collection.find_one(query, projection)

            if result:
                update_row = f"""
                UPDATE public.tb_anexo_prod
                SET colection_encontrada = :Collection, processado = TRUE
                where co_uuid_anexo_mongo = :UUID;
                """

                params = {
                    'Collection': collection_name,
                    'UUID': co_uuid_anexo_mongo,
                }
                executa_sql_transacional(conn_string, query, params)
                break

        if not result:
            print('Sem registro no MongoDB')
            update_row = f"""
                UPDATE public.tb_anexo_prod
                SET processado = true
                where co_uuid_anexo_mongo = :UUID;
                """
            params = {'UUID': co_uuid_anexo_mongo}
            executa_sql_transacional(BASE_TESTE_POSTGRES, update_row)


def executa_sql_transacional(
    conn_string: str, query_string: str, params: dict = None
):
    """
    Executa uma query SQL com suporte a transações e controle de concorrência.

    Args:
        conn_string (str): String de conexão do banco de dados.
        query_string (str): Consulta SQL a ser executada.
        params (dict, optional): Parâmetros para a consulta SQL.
    """
    try:
        # Criação do engine com pool de conexões
        engine = create_engine(
            conn_string,
            pool_size=10,  # Número máximo de conexões simultâneas
            max_overflow=5,  # Conexões adicionais em caso de demanda
            pool_timeout=30,  # Timeout ao esperar por uma conexão
            pool_pre_ping=True,  # Verifica se a conexão é válida antes de usar
        )

        logging.info('Iniciando operação no banco de dados.')

        # Gerenciamento de conexão e transação
        with engine.connect() as conn:
            with conn.begin():  # Inicia uma transação
                logging.info('Transação iniciada.')
                conn.execute(text(query_string), params)
                logging.info('Consulta executada com sucesso.')
    except SQLAlchemyError as e:
        logging.error(f'Erro ao executar a query: {e}')
        raise


def executa_sql(conn_string: str, query_string: str):
    try:
        engine = create_engine(conn_string)
        conn = engine.raw_connection()
        cur = conn.cursor()
        cur.execute(query_string)
        conn.commit()
        cur.close()
        conn.close()
    except Exception as e:
        print(e)


def get_postgres_data(engine, query):
    with engine.connect() as conn:
        return pd.read_sql_query(query, conn)


def save_to_postgres(data, engine, table_name, schema):
    data.to_sql(
        table_name, con=engine, if_exists='append', index=False, schema=schema
    )


def migration_prod_to_test():
    data = get_postgres_data(engine_fileserver_prod, FILESERVER_QUERY)
    print('Dados carregados!')
    save_to_postgres(data, engine_teste, 'tb_anexo_prod', 'mongodb')
    print('Dados salvos!')


def main(data):

    db = connect_to_mongodb(FILESERVER_MONGO_PREPROD, 'file')
    collections = db.list_collection_names()
    collections.sort()

    fetch_mongo_records(db, collections, data)


if __name__ == '__main__':
    print('Processo iniciado!')
    start_time = datetime.now()

    migration_prod_to_test()

    end_time = datetime.now()
    print('Processo concluído com sucesso.')

    full_time = end_time - start_time
    full_time = str(full_time).split('.')[0]
    print(f'Tempo de execução: {full_time}')
