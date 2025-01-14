import base64
import os

import pandas as pd
from dotenv import dotenv_values
from pymongo import MongoClient
from sqlalchemy import create_engine
from tqdm import tqdm

config = dotenv_values('.env')

QUANTIDADE = 10
FILESERVER_POSTGRES_PROD = config['FILESERVER_POSTGRES_PROD']
FILESERVER_MONGO_PROD = config['FILESERVER_MONGO_PROD']
BASE = config['BASE']

FILESERVER_QUERY = f"""
select co_uuid_anexo_mongo, co_uuid_2
from fileserver.tb_anexo ta
where st_ativo = true and co_uuid_2 = '87340945-ec72-4e84-8c94-5abd871aa796'
--limit {QUANTIDADE};
"""

engine = create_engine(FILESERVER_POSTGRES_PROD)
engine_bohr = create_engine(BASE)


def is_base64(s):
    try:
        decoded = base64.b64decode(s, validate=True)
        return base64.b64encode(decoded).decode() == s.strip()
    except Exception:
        return False


def get_postgres_data(engine, query):
    with engine.connect() as conn:
        return pd.read_sql_query(query, conn)


def connect_to_mongodb(uri, database):
    client = MongoClient(uri)
    return client[database]


def fetch_mongo_records(db, collections, fileserver_data):
    for index, row in tqdm(
        fileserver_data.iterrows(),
        total=len(fileserver_data),
        desc='Processando registros',
    ):
        mongo_id = row['co_uuid_anexo_mongo']
        co_uuid_2 = row['co_uuid_2']

        for collection_name in collections:
            if '.files' not in collection_name:
                continue

            files_collection = db[collection_name]
            query = {'filename': mongo_id}
            projection = {'metadata.nome': 1}
            result = files_collection.find_one(query, projection)

            if not result:
                continue

            chunks_collection_name = collection_name.replace(
                '.files', '.chunks'
            )
            chunks_collection = db[chunks_collection_name]

            query = {'files_id': result['_id']}
            projection = {'data': 1, '_id': 0}
            arquivo = chunks_collection.find_one(query, projection)

            if not arquivo:
                continue

            base64_data = (
                arquivo['data'] if is_base64(arquivo['data']) else None
            )

            data_result = pd.DataFrame(
                {
                    'nome_arquivo': [result['metadata']['nome']],
                    'collection_mongodb': [
                        chunks_collection_name.replace('.chunks', '')
                    ],
                    'uuid_arquivo': [mongo_id],
                    'uuid_usuario': [co_uuid_2],
                    'arquivo_base64': [base64_data],
                }
            )

            save_to_postgres(
                data_result,
                engine_bohr,
                'tb_anexos_mongodb',
                'mongodb',
            )
            break


def save_to_postgres(data, engine, table_name, schema):
    data.to_sql(
        table_name, con=engine, if_exists='append', index=False, schema=schema
    )


def main():

    fileserver_data = get_postgres_data(engine, FILESERVER_QUERY)

    db = connect_to_mongodb(FILESERVER_MONGO_PROD, 'file')
    collections = db.list_collection_names()
    collections.sort()

    fetch_mongo_records(db, collections, fileserver_data)

    save_to_postgres(data_result, engine_bohr, 'tb_anexos_mongodb', 'mongodb')

    print('Processo concluído com sucesso.')


if __name__ == '__main__':
    from datetime import datetime

    start_time = datetime.now()
    main()
    end_time = datetime.now()
    full_time = end_time - start_time
    full_time = str(full_time).split('.')[0]
    print(f'Tempo de execução: {full_time}')
