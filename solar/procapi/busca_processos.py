import unicodedata
from concurrent.futures import ThreadPoolExecutor
from datetime import datetime

import pandas as pd
from pymongo import MongoClient

from database import executar_query, list_to_sql
from utils.ambientes import string_base, string_procapi, string_solar
from utils.gerenciar_json import salvar_avisos_em_json
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def remover_acentos(texto):
    return ''.join(
        char_
        for char_ in unicodedata.normalize('NFKD', texto)
        if not unicodedata.combining(char_)
    ).upper()


def processos_mongodb(ambiente):
    client = MongoClient(string_procapi[ambiente])
    db = client['dbprocapi']
    collection = db.processo

    dados_filtrados = [
        {'numero': processo.get('numero')} for processo in collection.find()
    ]

    logging.info(f'Retorna dados do mongodb: {len(dados_filtrados)}')
    return pd.DataFrame(dados_filtrados)


def processos_mongodb_filtrados(ambiente):
    client = MongoClient(string_procapi[ambiente])
    db = client['dbprocapi']
    collection = db.processo

    dados_filtrados = []
    processos = collection.find({}, {'numero': 1, 'orgao_julgador.nome': 1})

    for processo in processos:
        orgao_julgador_nome = remover_acentos(
            processo.get('orgao_julgador', {}).get('nome', '')
        )
        if (
            'CIVEL' in orgao_julgador_nome
            and 'BELO HORIZONTE' in orgao_julgador_nome
        ):
            dados_filtrados.append({'numero': processo.get('numero')})
    logging.info(f'Retorna dados do procapi: {len(dados_filtrados)}')
    return pd.DataFrame(dados_filtrados)


def processos_postgres(ambiente):
    resultado = executar_query(
        True,
        """
            SELECT numero_puro
            FROM public.processo_processo;
        """,
        string_solar[ambiente],
    )
    logging.info(f'Retorna dados do solar: {len(resultado)}')
    return pd.DataFrame(resultado, columns=['id', 'numero_puro'])


def main(ambiente: str = 'prod'):
    logging.info(f'Buscando processos em {ambiente}')
    df_mongo = processos_mongodb(ambiente)
    df_postgres = processos_postgres(ambiente)

    df_mongo.rename(columns={'numero': 'numero_puro'}, inplace=True)
    df_merged = pd.merge(df_postgres, df_mongo, on='numero_puro', how='inner')
    logging.info(f'Processos encontrados: {len(df_merged)}')

    for numero in df_merged['numero_puro']:
        logging.info(f'Processo: {numero}')


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main('prod')

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
