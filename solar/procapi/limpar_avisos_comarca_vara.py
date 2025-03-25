from datetime import datetime

from database import executar_query
from utils.ambientes import string_procapi, string_solar
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)

VARA = 'Cível'
COMARCA = 'Belo Horizonte'


def retorna_processos(ambiente):
    logging.info('Buscando processos...')
    logging.info(f'Comarca: {COMARCA} - {VARA}')

    return executar_query(
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


def main(ambiente: str = 'dev'):
    logging.info(
        f'Iniciando busca de processos no ambiente {ambiente.upper()}'
    )
    processos = retorna_processos(ambiente)

    logging.info(f'Processos encontrados em {ambiente}: {len(processos)}')
    logging.info('Processos: ')
    for processo in processos:
        logging.info(processo)


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
