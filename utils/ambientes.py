from dotenv import dotenv_values

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

string_depe = {
    'dev': config['DEPE_DEV'],
    'tst': config['DEPE_TST'],
    'hml': config['DEPE_HML'],
    'preprod': config['DEPE_PREPROD'],
    'prod': config['DEPE_PROD'],
    'base_teste': config['BASE_TESTE'],
}
