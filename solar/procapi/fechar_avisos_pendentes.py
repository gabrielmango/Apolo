from datetime import datetime

from pymongo import MongoClient

from utils.ambientes import string_procapi
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def retorna_avisos(ambiente):
    logging.info('Buscando avisos...')

    client = MongoClient(string_procapi[ambiente])
    db = client['dbprocapi']
    aviso_collection = db.aviso

    current_date = datetime.now()

    return aviso_collection.find(
        {'prazo_ciencia': {'$lt': current_date}, 'situacao': 10},
        {'_id': 1, 'numero': 1, 'prazo_ciencia': 1},
    )


def atualiza_situacao_avisos(ambiente):
    logging.info('Atualizando situação dos avisos...')

    client = MongoClient(string_procapi[ambiente])
    db = client['dbprocapi']
    aviso_collection = db.aviso

    current_date = datetime.now()

    # Busca os avisos que precisam ser atualizados
    avisos = aviso_collection.find(
        {'prazo_ciencia': {'$lt': current_date}, 'situacao': 10}
    )

    # Atualiza a situação de cada aviso para 30
    for aviso in avisos:
        aviso_collection.update_one(
            {'_id': aviso['_id']}, {'$set': {'situacao': 30}}
        )
        logging.info(f'Aviso {aviso["numero"]} atualizado para situação 30.')


def main(ambiente: str = 'prod'):
    dados = retorna_avisos(ambiente)

    avisos = [dado for dado in dados]

    print(len(avisos))
    for aviso in avisos[:5]:
        print(
            f'Aviso: {aviso["numero"]}, Prazo de Ciência: {aviso["prazo_ciencia"]}'
        )


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
