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
            {'processo.numero': _aviso},
            {'$set': {'distribuido_cpf': '08462605652'}},
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
        '5002395-69.2021.8.13.0400',
        '5002395-69.2021.8.13.0400',
        '5002395-69.2021.8.13.0400',
        '5002395-69.2021.8.13.0400',
        '5002395-69.2021.8.13.0400',
        '5002395-69.2021.8.13.0400',
        '5000039-67.2022.8.13.0400',
        '5000595-98.2024.8.13.0400',
        '5000973-20.2025.8.13.0400',
        '5000973-20.2025.8.13.0400',
        '5000413-49.2023.8.13.0400',
        '5000413-49.2023.8.13.0400',
        '5000413-49.2023.8.13.0400',
        '5001951-70.2020.8.13.0400',
        '5001627-12.2022.8.13.0400',
        '5003933-80.2024.8.13.0400',
        '5000997-48.2025.8.13.0400',
        '5000989-71.2025.8.13.0400',
        '5004517-50.2024.8.13.0400',
        '5000413-49.2023.8.13.0400',
        '5000413-49.2023.8.13.0400',
        '5000413-49.2023.8.13.0400',
        '5001949-32.2022.8.13.0400',
        '5003475-63.2024.8.13.0400',
        '5002411-91.2019.8.13.0400',
        '0019303-34.2017.8.13.0400',
        '5000227-94.2021.8.13.0400',
        '5000227-94.2021.8.13.0400',
        '5002035-37.2021.8.13.0400',
        '5002035-37.2021.8.13.0400',
        '5004843-78.2022.8.13.0400',
        '5004843-78.2022.8.13.0400',
        '5000547-76.2023.8.13.0400',
        '5000547-76.2023.8.13.0400',
        '5001153-46.2019.8.13.0400',
        '5003323-88.2019.8.13.0400',
        '0033175-87.2015.8.13.0400',
        '0034767-35.2016.8.13.0400',
        '0034767-35.2016.8.13.0400',
        '5001565-06.2021.8.13.0400',
        '5003859-94.2022.8.13.0400',
        '5000551-16.2023.8.13.0400',
        '5001045-75.2023.8.13.0400',
        '5000199-24.2024.8.13.0400',
        '5000199-24.2024.8.13.0400',
        '5000199-24.2024.8.13.0400',
        '5000533-58.2024.8.13.0400',
        '5000975-87.2025.8.13.0400',
        '5000975-87.2025.8.13.0400',
        '5000993-11.2025.8.13.0400',
        '5001005-93.2023.8.13.0400',
        '5002365-34.2021.8.13.0400',
        '5003759-42.2022.8.13.0400',
        '5003611-60.2024.8.13.0400',
        '5002367-04.2021.8.13.0400',
        '5002367-04.2021.8.13.0400',
        '5002367-04.2021.8.13.0400',
        '5002367-04.2021.8.13.0400',
        '5002253-60.2024.8.13.0400',
        '5003489-23.2019.8.13.0400',
        '5000029-52.2024.8.13.0400',
        '5001789-41.2021.8.13.0400',
        '5003227-05.2021.8.13.0400',
        '5001987-78.2021.8.13.0400',
        '5004517-50.2024.8.13.0400',
        '5000987-04.2025.8.13.0400',
        '5000991-41.2025.8.13.0400',
        '5005127-18.2024.8.13.0400',
        '5001935-14.2023.8.13.0400',
        '5004209-14.2024.8.13.0400',
        '5004209-14.2024.8.13.0400',
        '5004209-14.2024.8.13.0400',
        '5004209-14.2024.8.13.0400',
        '5004209-14.2024.8.13.0400',
        '5004209-14.2024.8.13.0400',
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
