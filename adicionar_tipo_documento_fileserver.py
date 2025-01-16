from dotenv import dotenv_values
from sqlalchemy import create_engine

from utils import carregar_de_json

config = dotenv_values('.env')

FILESERVER_POSTGRES_PREPROD = config['FILESERVER_POSTGRES_PREPROD']

engine_fileserver_preprod = create_engine(FILESERVER_POSTGRES_PREPROD)


def main():

    tipos_documentos = carregar_de_json(
        'data/tipo_documentos_fileserver_cesv.json'
    )


if __name__ == '__main__':
    from datetime import datetime

    start_time = datetime.now()
    main()
    end_time = datetime.now()
    full_time = end_time - start_time
    full_time = str(full_time).split('.')[0]
    print(f'Tempo de execução: {full_time}')
