from dotenv import dotenv_values
from sqlalchemy import create_engine

config = dotenv_values('.env')

string_fileserver = {
    'dev': config['FILESERVER_POSTGRES_DEV'],
    'tst': config['FILESERVER_POSTGRES_TST'],
    'hml': config['FILESERVER_POSTGRES_HML'],
    'preprod': config['FILESERVER_POSTGRES_PREPROD'],
    'prod': config['FILESERVER_POSTGRES_PROD'],
}


string_scsdp = {
    'dev': config['SCSDP_DEV'],
    'tst': config['SCSDP_TST'],
    'hml': config['SCSDP_HML'],
    'preprod': config['SCSDP_PREPROD'],
    'prod': config['SCSDP_PROD'],
}

string_gerais = {
    'dev': config['GERAIS_DEV'],
    'tst': config['GERAIS_TST'],
    'hml': config['GERAIS_HML'],
    'preprod': config['GERAIS_PREPROD'],
    'prod': config['GERAIS_PROD'],
}
