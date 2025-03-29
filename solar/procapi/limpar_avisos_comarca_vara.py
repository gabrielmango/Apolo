from datetime import datetime

from pymongo import MongoClient

from database import executar_query, list_to_sql
from utils.ambientes import string_base, string_procapi, string_solar
from utils.gerenciar_json import salvar_avisos_em_json
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)

quant_avisos = 0
quant_processos_com_avisos = 0

list_avisos = []

VARA = 'Cível'
COMARCA = 'Belo Horizonte'

FILE_NAME = 'solar/procapi/avisos_prod.json'

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


def deleta_avisos(ambiente, processo):
    global quant_processos_com_avisos
    global quant_avisos

    client = MongoClient(string_procapi[ambiente])
    db = client['dbprocapi']
    aviso_collection = db.aviso
    avisos = aviso_collection.find({'processo.numero': processo})

    avisos = list(avisos)

    salvar_avisos_em_json(avisos, FILE_NAME)

    if avisos:
        logging.info(f'Processo {processo}: {len(avisos)}')
        quant_processos_com_avisos += 1
        for aviso in avisos:
            logging.info(f'Número do aviso: {aviso["numero"]}')
            quant_avisos += 1
            list_avisos.append(
                {
                    'numero_processo': processo,
                    'numero_aviso': aviso['numero'],
                }
            )
            aviso_collection.delete_one({'_id': aviso['_id']})
        logging.info('----------------------------------------')
        aviso_collection.delete_many({'processo.numero': processo})


def deleta_avisos_excecao(ambiente, processo, defensoria):

    client = MongoClient(string_procapi[ambiente])
    db = client['dbprocapi']
    aviso_collection = db.aviso

    data_inicio = datetime(2025, 3, 20)
    data_fim = datetime(2025, 3, 28)

    deleta_avisos_nao_fechados_no_periodo(
        processo, data_inicio, data_fim, aviso_collection, defensoria
    )

    deleta_avisos_fora_periodo(
        processo, data_inicio, data_fim, aviso_collection, defensoria
    )


def deleta_avisos_nao_fechados_no_periodo(
    processo, data_inicio, data_fim, aviso_collection, defensoria
):
    global quant_processos_com_avisos
    global quant_avisos

    avisos = aviso_collection.find(
        {
            'processo.numero': processo,
            'modificado_em': {'$gte': data_inicio, '$lte': data_fim},
            'situacao': {'$ne': 30},
        }
    )

    avisos = list(avisos)

    salvar_avisos_em_json(avisos, FILE_NAME)

    if avisos:
        logging.info(f'>>> Processo {processo}: {defensoria}')
        logging.info(
            f'Processo {processo} - Dentro do período ({data_inicio.date()} à {data_fim.date()}) e situação diferente de Fechado: {len(avisos)}'
        )
        quant_processos_com_avisos += 1
        for aviso in avisos:
            logging.info(f'Número do aviso: {aviso["numero"]}')
            quant_avisos += 1
            list_avisos.append(
                {
                    'numero_processo': processo,
                    'numero_aviso': aviso['numero'],
                }
            )
            aviso_collection.delete_one({'_id': aviso['_id']})
        logging.info('----------------------------------------')


def deleta_avisos_fora_periodo(
    processo, data_inicio, data_fim, aviso_collection, defensoria
):
    global quant_processos_com_avisos
    global quant_avisos

    avisos = aviso_collection.find(
        {
            'processo.numero': processo,
            '$or': [
                {
                    'modificado_em': {'$lt': data_inicio}
                },  # Menor que o início do intervalo
                {
                    'modificado_em': {'$gt': data_fim}
                },  # Maior que o fim do intervalo
            ],
        }
    )

    avisos = list(avisos)

    salvar_avisos_em_json(avisos, FILE_NAME)

    if avisos:
        logging.info(f'>>> Processo {processo}: {defensoria}')
        logging.info(
            f'*** Processo {processo} - Fora do período ({data_inicio.date()} à {data_fim.date()}): {len(avisos)}'
        )
        quant_processos_com_avisos += 1
        for aviso in avisos:
            logging.info(f'Número do aviso: {aviso["numero"]}')
            quant_avisos += 1
            list_avisos.append(
                {
                    'numero_processo': processo,
                    'numero_aviso': aviso['numero'],
                }
            )
            aviso_collection.delete_one({'_id': aviso['_id']})
        logging.info('----------------------------------------')


def main(ambiente: str = 'dev'):
    logging.info(f'Busca de processos no ambiente {ambiente.upper()}')
    processos = retorna_processos(ambiente)

    logging.info(f'Processos encontrados em {ambiente}: {len(processos)}')

    for processo in processos:

        if (
            processo['defensoria_1'] in DEFENSORIAS
            or processo['defensoria_2'] in DEFENSORIAS
        ):
            deleta_avisos_excecao(
                ambiente, processo['numero_processo'], processo['defensoria_1']
            )
        else:
            deleta_avisos(ambiente, processo['numero_processo'])

    logging.info(f'Processos com avisos: {quant_processos_com_avisos}')
    logging.info(f'Total de avisos: {quant_avisos}')

    list_to_sql(
        list_avisos,
        string_base['teste'],
        'solar_processo_aviso_dev',
        'processo',
    )


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
