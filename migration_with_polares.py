import polars as pl
from dotenv import dotenv_values
from sqlalchemy import create_engine

config = dotenv_values('.env')

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
order by 
    co_seq_anexo asc;
"""


def migrate_data_postgres_to_postgres(
    query, source_engine, target_engine, table_name, schema
):
    with source_engine.connect() as source_conn:
        data = pl.read_database(query, connection=source_conn)
        print('Dados carregados!')

    with target_engine.connect() as target_conn:
        data.write_database(table_name=table_name, connection=target_conn)
        print('Dados salvos!')


if __name__ == '__main__':
    from datetime import datetime

    print('Processo iniciado!')
    start_time = datetime.now()

    migrate_data_postgres_to_postgres(
        FILESERVER_QUERY,
        engine_fileserver_prod,
        engine_teste,
        'tb_anexo_prod_2',
        'mongodb',
    )

    end_time = datetime.now()
    print('Processo concluído com sucesso.')

    full_time = end_time - start_time
    full_time = str(full_time).split('.')[0]
    print(f'Tempo de execução: {full_time}')
