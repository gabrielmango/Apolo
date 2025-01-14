import os
import time
from datetime import datetime

import pandas as pd
import schedule
from dotenv import dotenv_values
from sqlalchemy import create_engine, text

config = {
    'DEV_BASE': 'postgresql+psycopg2://gabriel_mango:k0CA5O1KfQ5eyrEm6nJR@10.230.32.19:5060/postgres',
    'TST_BASE': 'postgresql+psycopg2://gabriel_mango:k0CA5O1KfQ5eyrEm6nJR@10.230.20.11:5060/postgres',
    'HML_BASE': 'postgresql+psycopg2://gabriel_mango:k0CA5O1KfQ5eyrEm6nJR@10.100.65.88:5060/postgres',
    'BANCO_DBAS': 'postgresql+psycopg2://postgres:dpmg2022@10.100.64.55:5432/bohr',
}

CONSULTA_TODOS_BANCOS: str = """
SELECT a.datname as database
FROM pg_database a 
WHERE a.datistemplate = false and a.datname not in ('bohr', 'datolita', 'prehnite')
ORDER BY a.datname;
"""

CONSULTA_TODOS_SCHEMAS: str = """
SELECT schema_name AS schema
FROM information_schema.schemata
WHERE schema_name NOT IN (
    'pg_toast', 'pg_catalog', 'information_schema', 'public', 
    'auditoria', 'auditoria_infra'
) 
AND position('bkp' IN schema_name) = 0
AND schema_name !~ '[0-9]';
"""

CREATE_SCHEMA_INFORMACOES_AMBIENTES = (
    'CREATE SCHEMA IF NOT EXISTS informacoes_ambientes;'
)


def make_query_and_extract_column(
    query: str, engine, column_name: str
) -> list:
    """Executa uma query SQL e extrai uma coluna específica como uma lista."""
    with engine.connect() as conn:
        df = pd.read_sql_query(query, conn)
        return df[column_name].tolist() if column_name in df.columns else []


def extract_database_and_schema(environment: str, engine_base) -> pd.DataFrame:
    """Extrai os bancos de dados e seus respectivos schemas para um ambiente específico."""
    database_list = make_query_and_extract_column(
        CONSULTA_TODOS_BANCOS, engine_base, 'database'
    )

    data = {'no_banco_dados': [], 'no_schema': [], 'dh_criacao': []}

    for database in database_list:
        # Alterar o banco de dados no engine
        new_engine = create_engine(engine_base.url.set(database=database))
        schema_list = make_query_and_extract_column(
            CONSULTA_TODOS_SCHEMAS, new_engine, 'schema'
        )

        data['no_banco_dados'].extend([database] * len(schema_list))
        data['no_schema'].extend(schema_list)
        data['dh_criacao'].extend([datetime.now()] * len(schema_list))

    return pd.DataFrame(data)


def save_to_database(
    df: pd.DataFrame,
    engine,
    table_name: str,
    schema: str = 'informacoes_ambientes',
) -> None:
    """Salva um DataFrame em uma tabela SQL, substituindo os dados existentes."""
    df.to_sql(
        table_name,
        con=engine,
        if_exists='replace',
        index=False,
        schema=schema,
    )


def executa_sql(conn_string: str, query_string: str):
    """Cria um schema na base de dados."""
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


def main_etl(environment: str):
    """Função principal que executa a extração e salvamento dos dados de bancos de dados e schemas."""
    conn_string_base = config[f'{environment}_BASE']
    conn_string_dbas = config['BANCO_DBAS']

    engine_base = create_engine(conn_string_base)
    engine_dbas = create_engine(conn_string_dbas)

    df = extract_database_and_schema(environment, engine_base)

    executa_sql(conn_string_dbas, CREATE_SCHEMA_INFORMACOES_AMBIENTES)
    save_to_database(df, engine_dbas, f'tb_bancos_{environment.lower()}')


def handle_main_etl():
    """Função que executa a extração e salvamento dos dados de bancos de dados e schemas para todos os ambientes."""
    environment_list = ['DEV', 'TST', 'HML']
    for environment in environment_list:
        main_etl(environment)
    print(f'Atualização: {datetime.now()}')


if __name__ == '__main__':
    handle_main_etl()
