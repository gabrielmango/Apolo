import requests

from database import executar_query
from utils.ambientes import string_institucional
from utils.setup_logging import LogHandler

log_handler = LogHandler('Voluntario_email_ad')

URL = 'https://gerais.defensoria.mg.def.br/contato/service/contatos/v3'

TOKEN = ''

auditoria = 'voluntario_ad'


def retorna_voluntario():
    return executar_query(
        True,
        """
        select 
            t1.no_inst_pessoa,
            t1.co_uuid as uuidref,
            t2.co_uuid as uuid,
            t3.nu_documento || '@defensoria.mg.def.br' as descricao
        from public.vw_usuario_institucional t1
        left join public.email_voluntario t2
            on t1.co_uuid = t2.co_uuid_2 
        left join public.cpf_voluntario t3
            on t1.co_uuid = t3.co_uuid_2 
        where 
            t1.no_inst_vinculo in ('SERVIÇO VOLUNTÁRIO', 'ESTAGIÁRIO CEDIDO') and
            t1.no_inst_situacao_funcional not in ('RESCINDIDO', 'INATIVO') and 
            t2.ds_email not like '%@defensoria.mg.def.br'
        order by t1.no_inst_vinculo, no_inst_situacao_funcional;
        """,
        string_institucional.get('prod'),
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
                'sgProjetoModificador': f'{auditoria}',
                'sgAcaoModificadora': f'{auditoria}',
                'noEndpointModificador': f'{auditoria}',
            },
        }

        atualiza_produtividade(data)
        print(f"{dado.get('no_inst_pessoa')}: {dado.get('descricao')}!")


if __name__ == '__main__':
    main()
