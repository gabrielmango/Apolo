from dotenv import dotenv_values

from utils.gerenciar_json import carregar_de_json

config = dotenv_values('.env')

ambientes_fileserver = {
    'dev': config['FILESERVER_POSTGRES_DEV'],
    'tst': config['FILESERVER_POSTGRES_TST'],
    'hml': config['FILESERVER_POSTGRES_HML'],
    'preprod': config['FILESERVER_POSTGRES_PREPROD'],
    'prod': config['FILESERVER_POSTGRES_PROD'],
}


def main():
    tipos_documentos = carregar_de_json(
        r'filserver\data\tipo_documentos_cesv.json'
    )

    lista_funcionalidades = set()
    lista_projetos = set()
    for tipo in tipos_documentos:
        for funcionalidade in tipo['funcionalidades']:
            lista_funcionalidades.add(funcionalidade)
        for projeto in tipo['projetos']:
            lista_projetos.add(projeto)


if __name__ == '__main__':
    from datetime import datetime

    print(f'\nProcesso iniciado: {datetime.now()} \n')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    print(f'\nProcesso finalizado: {datetime.now()} \n')

    full_time = end_time - start_time
    full_time = str(full_time).split('.')[0]
    print(f'Tempo de execução: {full_time}')
