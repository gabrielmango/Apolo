from dotenv import dotenv_values

config = dotenv_values('.env')

string_base = {
    'dev': config['DEV'],
    'tst': config['TST'],
    'hml': config['HML'],
    'teste': config['BASE_TESTE'],
}

string_cesv = {
    'dev': config['CESV_DEV'],
    'tst': config['CESV_TST'],
    'hml': config['CESV_HML'],
    'preprod': config['CESV_PREPROD'],
    'prod': config['CESV_PROD'],
}

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
}

string_pessoa_externa = {
    'dev': config['PESSOA_EXTERNA_DEV'],
    'tst': config['PESSOA_EXTERNA_TST'],
    'hml': config['PESSOA_EXTERNA_HML'],
    'preprod': config['PESSOA_EXTERNA_PREPROD'],
    'prod': config['PESSOA_EXTERNA_PROD'],
}

string_contato = {
    'dev': config['CONTATO_DEV'],
    'tst': config['CONTATO_TST'],
    'hml': config['CONTATO_HML'],
    'preprod': config['CONTATO_PREPROD'],
    'prod': config['CONTATO_PROD'],
}

string_localizacao = {
    'dev': config['LOCALIZACAO_DEV'],
    'tst': config['LOCALIZACAO_TST'],
    'hml': config['LOCALIZACAO_HML'],
    'preprod': config['LOCALIZACAO_PREPROD'],
    'prod': config['LOCALIZACAO_PROD'],
}

string_patrimonio = {'dev': config['PATRIMONIO_DEV']}

# string_geral_pessoa = {
#     'dev': config['GERAL_PESSOA_DEV'],
#     'tst': config['GERAL_PESSOA_TST'],
#     'hml': config['GERAL_PESSOA_HML'],
#     'preprod': config['GERAL_PESSOA_PREPROD'],
#     'prod': config['GERAL_PESSOA_PROD'],
# }


string_solar = {
    'prod': config['SOLAR_PROD'],
    'dev': config['SOLAR_DEV'],
}

string_procapi = {
    'prod': config['PROCAPI_PROD'],
    'preprod': config['PROCAPI_PREPROD'],
    'dev': config['PROCAPI_DEV'],
    'hml': config['PROCAPI_HML'],
    'tst': config['PROCAPI_TST'],
}
