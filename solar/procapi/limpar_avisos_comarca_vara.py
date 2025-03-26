from datetime import datetime

from pymongo import MongoClient

from database import executar_query
from utils.ambientes import string_procapi, string_solar
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)

VARA = 'Cível'
COMARCA = 'Belo Horizonte'

DEFENSORIAS = [
    '1ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '2ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '3ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '4ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '5ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '6ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '7ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '8ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '9ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '10ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '11ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '12ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '13ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '14ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '15ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '16ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '17ª DEFENSORIA CÍVEL',
    '18ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '19ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '20ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '21ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '22ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '23ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '24ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '25ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '26ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '27ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '28ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '29ª DEFENSORIA CIVEL DE BELO HORIZONTE - A',
    '30ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '31ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '32ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '33ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '34ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '35ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '36ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '37ª DEFENSORIA CIVEL DE BELO HORIZONTE - A',
    '37ª DEFENSORIA CIVEL DE BELO HORIZONTE - B',
    '37ª DEFENSORIA CIVEL DE BELO HORIZONTE - C',
    '37ª DEFENSORIA CIVEL DE BELO HORIZONTE - D',
    '37ª DEFENSORIA CIVEL DE BELO HORIZONTE - E',
    '38ª DEFENSORIA CIVEL DE BELO HORIZONTE - A',
    '38ª DEFENSORIA CIVEL DE BELO HORIZONTE - B',
    '38ª DEFENSORIA CIVEL DE BELO HORIZONTE - C',
    '38ª DEFENSORIA CIVEL DE BELO HORIZONTE - D',
    '38ª DEFENSORIA CIVEL DE BELO HORIZONTE - E',
    '38ª DEFENSORIA CIVEL DE BELO HORIZONTE - F',
]


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
            SELECT 
                pp.numero_puro as numero_processo,
                cd.nome as defensoria_1, 
                cd2.nome as defensoria_2
            FROM processo_processo pp
            left join processo_parte pp2 on pp2.processo_id = pp.id
            left join processo_fase pf on pf.defensoria_id = pp.id
            left join contrib_defensoria cd on pp2.defensoria_id = cd.id 
            left join contrib_defensoria cd2 on pf.defensoria_id = cd2.id
            WHERE pp.ativo
            AND pp.comarca_id IN (SELECT id FROM comarcas)
            AND pp.vara_id IN (SELECT id FROM varas)
            order by pp.id desc;
        """,
        string_solar[ambiente],
    )


def retorna_avisos(ambiente, processo):

    client = MongoClient(string_procapi[ambiente])
    db = client['dbprocapi']
    aviso_collection = db.aviso
    avisos = aviso_collection.find(
        {'processo.numero': processo},
        {'_id': 0, 'numero': 1},
    )
    return list(avisos)


def main(ambiente: str = 'prod'):
    logging.info(
        f'Iniciando busca de processos no ambiente {ambiente.upper()}'
    )
    processos = retorna_processos(ambiente)

    logging.info(f'Processos encontrados em {ambiente}: {len(processos)}')
    for processo in processos:

        if (
            processo['defensoria_1'] in DEFENSORIAS
            or processo['defensoria_2'] in DEFENSORIAS
        ):

            avisos = retorna_avisos(ambiente, processo['numero_processo'])

            if len(avisos) > 0:

                logging.info(
                    f'*** Processo {processo["numero_processo"]} pertence às defensorias de exceção!'
                )
                logging.info(
                    f'Avisos encontrados para o processo: {len(avisos)}'
                )

                for aviso in avisos:
                    logging.info(f'Número do aviso: {aviso["numero"]}')

                logging.info('----------------------------------------')


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
