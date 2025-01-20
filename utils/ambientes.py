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

engine_fileserver = {
    'dev': create_engine(string_fileserver['dev']),
    'tst': create_engine(string_fileserver['tst']),
    'hml': create_engine(string_fileserver['hml']),
    'preprod': create_engine(string_fileserver['preprod']),
    'prod': create_engine(string_fileserver['prod']),
}

string_scsdp = {
    'dev': config['SCSDP_DEV'],
    'tst': config['SCSDP_TST'],
    'hml': config['SCSDP_HML'],
    'preprod': config['SCSDP_PREPROD'],
    'prod': config['SCSDP_PROD'],
}

engine_scsdp = {
    'dev': create_engine(string_scsdp['dev']),
    'tst': create_engine(string_scsdp['tst']),
    'hml': create_engine(string_scsdp['hml']),
    'preprod': create_engine(string_scsdp['preprod']),
    'prod': create_engine(string_scsdp['prod']),
}
