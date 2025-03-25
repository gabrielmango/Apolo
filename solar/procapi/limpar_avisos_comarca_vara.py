from datetime import datetime

from pymongo import MongoClient

from database import executar_query
from utils.ambientes import string_procapi, string_solar
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)

VARA = 'Cível'
COMARCA = 'Belo Horizonte'


def retorna_processos(ambiente):
    logging.info('Buscando processos...')
    logging.info(f'Comarca: {COMARCA} - {VARA}')

    processos = executar_query(
        True,
        f"""
            WITH comarcas AS (
                SELECT id
                FROM contrib_comarca
                WHERE ativo 
                AND upper(unaccent(trim(nome))) LIKE upper(unaccent(trim('%{COMARCA}%')))
            ),
            varas AS (
                SELECT id
                FROM contrib_vara
                WHERE upper(unaccent(trim(nome))) LIKE upper(unaccent(trim('%{VARA}%')))
                AND comarca_id IN (SELECT id FROM comarcas)
            )
            SELECT pp.numero_puro as numero_processo
            FROM processo_processo pp 
            WHERE ativo
            AND comarca_id IN (SELECT id FROM comarcas)
            AND vara_id IN (SELECT id FROM varas)
            and length(pp.numero_puro) <= 20;
        """,
        string_solar[ambiente],
    )

    return [str(processo['numero_processo']) for processo in processos]


def retorna_avisos(ambiente, processo):
    logging.info('Buscando avisos...')

    client = MongoClient(string_procapi[ambiente])
    db = client['dbprocapi']
    aviso_collection = db.aviso

    return aviso_collection.find(
        {'processo.numero': processo},
        {'_id': 1},
    )


def main(ambiente: str = 'prod'):
    logging.info(
        f'Iniciando busca de processos no ambiente {ambiente.upper()}'
    )
    processos = retorna_processos('prod')

    logging.info(f'Processos encontrados em {ambiente}: {len(processos)}')
    logging.info('Processos: ')
    for processo in processos:
        logging.info(processo)
        avisos = list(retorna_avisos('dev', processo))
        if len(avisos) > 0:
            logging.info(f'Avisos para o processo {processo}: {len(avisos)}')
            for aviso in avisos:
                logging.info(aviso)
            logging.info('----------------------------------------')
        else:
            logging.info(f'Nenhum aviso encontrado para o processo {processo}')


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
