import unicodedata
from concurrent.futures import ThreadPoolExecutor
from datetime import datetime

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


def filtrar_processos(ambiente):
    client = MongoClient(string_procapi[ambiente])
    db = client['dbprocapi']
    collection = db.processo

    numeros_filtrados = []
    processos = collection.find({}, {'numero': 1, 'orgao_julgador.nome': 1})

    for processo in processos:
        orgao_julgador_nome = remover_acentos(
            processo.get('orgao_julgador', {}).get('nome', '')
        )
        if (
            'CIVEL' in orgao_julgador_nome
            and 'BELO HORIZONTE' in orgao_julgador_nome
        ):
            numeros_filtrados.append(processo.get('numero'))

    return numeros_filtrados


def retorna_processos(ambiente, numeros_processo):
    for numero_processo in numeros_processo:
        print(numero_processo)
        processos_processo = executar_query(
            True,
            f"""
               SELECT id, numero_puro
               FROM public.processo_processo
               WHERE numero_puro = '{numero_processo}';
            """,
            string_solar[ambiente],
        )
        if processos_processo:
            logging.info(f'Processo encontrado: {processos_processo}')


def main(ambiente: str = 'prod'):
    logging.info(f'Buscando processos no ambiente {ambiente.upper()}')
    processos_filtrados = filtrar_processos(ambiente)
    logging.info(f'Números de processos filtrados: {len(processos_filtrados)}')

    if not processos_filtrados:
        logging.info('Nenhum processo encontrado para processamento.')
        return

    # Dividir a lista em 10 partes
    chunk_size = max(
        1, len(processos_filtrados) // 10
    )  # Evitar divisão por zero
    chunks = [
        processos_filtrados[i : i + chunk_size]
        for i in range(0, len(processos_filtrados), chunk_size)
    ]

    with ThreadPoolExecutor(max_workers=10) as executor:
        executor.map(lambda chunk: retorna_processos(ambiente, chunk), chunks)


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
