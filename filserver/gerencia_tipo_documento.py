from dotenv import dotenv_values

config = dotenv_values('.env')

ambientes_fileserver = {
    'dev': config['FILESERVER_POSTGRES_DEV'],
    'tst': config['FILESERVER_POSTGRES_TST'],
    'hml': config['FILESERVER_POSTGRES_HML'],
    'preprod': config['FILESERVER_POSTGRES_PREPROD'],
    'prod': config['FILESERVER_POSTGRES_PROD']
}

