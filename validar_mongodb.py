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
FILESERVER_MONGO_PROD = config['FILESERVER_MONGO_PROD']

FILESERVER_POSTGRES_PROD = config['FILESERVER_POSTGRES_PROD']
BASE_TESTE_POSTGRES = config['BASE_TESTE_POSTGRES']

engine_fileserver_prod = create_engine(FILESERVER_POSTGRES_PROD)
engine_teste = create_engine(BASE_TESTE_POSTGRES)


def main():
    print('Iniciando leitura de dados do PostgreSQL...')

    data_postgresql = pd.read_sql(
        text(
            """
            SELECT 
                co_uuid_anexo_mongo as filename, 
                st_ativo, 
                dh_criacao, 
                dh_alteracao 
            FROM fileserver.tb_anexo;
            """
        ),
        engine_fileserver_prod,
    )

    # data_postgresql.to_sql(
    #     name='tb_anexo_prod_2',
    #     con=engine_teste,
    #     if_exists='append',
    #     index=False,
    #     schema='mongodb'
    # )

    print(
        f'Dados do PostgreSQL carregados com sucesso! Registros encontrados: {len(data_postgresql)}'
    )

    print('Conectando ao MongoDB...')
    client = MongoClient(FILESERVER_MONGO_PROD)
    db = client['file']
    collection_names = db.list_collection_names()

    collection_names = [name for name in collection_names if '.files' in name]
    print(f'Coleções filtradas: {len(collection_names)} coleções encontradas.')

    dataframes = []
    quantidade_registros = 0

    for name in collection_names:
        print(f'Processando coleção: {name}...')
        collection = db[name]
        documents = collection.find({}, {'filename': 1, '_id': 0})

        data = pd.DataFrame(list(documents))
        data['collection_name'] = name

        dataframes.append(data)
        quantidade_registros += len(data)

    print(f'Total de registros encontrados no MongoDB: {quantidade_registros}')

    data_mongodb = pd.concat(dataframes, ignore_index=True)
    print(
        f'Dados do MongoDB concatenados. Total de registros: {len(data_mongodb)}'
    )

    # data_mongodb.to_sql(
    #     'dados_mongodb_prod_2',
    #     con=engine_teste,
    #     if_exists='append',
    #     index=False,
    #     schema='mongodb'
    # )

    print('Iniciando a mesclagem dos dados entre PostgreSQL e MongoDB...')
    result = pd.merge(data_postgresql, data_mongodb, how='left', on='filename')

    print('Mesclagem concluída. Filtrando os resultados...')
    filtered_result = result[
        (result['collection_name'].isnull()) & (result['st_ativo'] == True)
    ]
    final_result = filtered_result[['filename', 'st_ativo', 'collection_name']]
    print(f'Registros filtrados: {len(final_result)} registros.')

    data_atual = datetime.now()
    name = 'tb_anexo_faltante_' + data_atual.strftime('%Y_%m_%d')

    print('Inserindo os resultados finais na tabela do PostgreSQL...')

    final_result.to_sql(
        name, engine_teste, if_exists='append', index=False, schema='mongodb'
    )

    print(
        f'Resultados inseridos na tabela do PostgreSQL. Nome da tabela: {name}'
    )


if __name__ == '__main__':
    print('Processo iniciado!')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    print('Processo concluído com sucesso.')

    full_time = end_time - start_time
    full_time = str(full_time).split('.')[0]
    print(f'Tempo de execução: {full_time}')
