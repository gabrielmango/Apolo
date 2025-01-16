from dotenv import dotenv_values
from sqlalchemy import create_engine, text

config = dotenv_values('.env')

FILESERVER_POSTGRES_PREPROD = config['FILESERVER_POSTGRES_PREPROD']

engine_fileserver_preprod = create_engine(FILESERVER_POSTGRES_PREPROD)
