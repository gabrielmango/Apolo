from datetime import datetime

from pymongo import MongoClient

from utils.ambientes import string_procapi
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def fecha_avisos(ambiente, avisos):
    client = MongoClient(string_procapi[ambiente])
    db = client['dbprocapi']
    aviso_collection = db.aviso

    for aviso in avisos:
        _aviso = str(aviso).replace('-', '').replace('.', '')
        logging.info(f'Fechando aviso do processo {_aviso}...')

        aviso_collection.update_many(
            {'processo.numero': _aviso}, {'$set': {'situacao': 30}}
        )
        logging.info(f'Avisos fechados.')


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

    avisos = [
        '0064275-46.2017.8.13.0382',
        '0015257-12.2024.8.13.0382',
        '0016131-94.2024.8.13.0382',
        '5011795-59.2024.8.13.0382',
        '0006773-13.2021.8.13.0382',
        '0004111-71.2024.8.13.0382',
        '5001298-49.2025.8.13.0382',
        '5002241-66.2025.8.13.0382',
    ]

    fecha_avisos(ambiente, avisos)


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
