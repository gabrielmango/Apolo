import requests

from database import executar_query
from utils.ambientes import string_institucional
from utils.setup_logging import LogHandler

log_handler = LogHandler('Voluntario_email_ad')

URL = 'https://pre-prod.gerais.mg.def.br/contato/service/contatos/v3'

TOKEN = ''

auditoria = 'email_voluntario_ad'


def retorna_voluntario():
    return executar_query(
        True,
        """
        SELECT * FROM public.tb_email_voluntario;
        """,
        string_institucional.get('preprod'),
    )


def atualiza_produtividade(data):

    headers = {
        'Authorization': f'Bearer {TOKEN}',
        'Content-Type': 'application/json',
    }

    try:
        response = requests.put(URL, json=data, headers=headers, timeout=100)

        if response.status_code == 200:
            print('Requisição bem-sucedida!')
            print('Resposta:', response.json())
        else:
            print(f'Falha na requisição. Status code: {response.status_code}')
            print('Resposta:', response.text)

    except Exception as e:
        print(e)


def main():
    for dado in retorna_voluntario():
        data = {
            'uuid': dado.get('uuid'),
            'descricao': dado.get('descricao'),
            'uuidRef': dado.get('uuidref'),
            'principal': True,
            'contato': 'EMAIL',
            'tipo': 'CORPORATIVO',
            'auditoriaDTO': {
                'sgProjetoModificador': 'voluntario_ad',
                'sgAcaoModificadora': 'voluntario_ad',
                'noEndpointModificador': 'voluntario_ad',
            },
        }

        print(data)
        atualiza_produtividade(data)


if __name__ == '__main__':
    main()
