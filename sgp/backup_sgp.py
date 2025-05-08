import requests

from database import executar_query
from utils.ambientes import string_institucional


def dividir_em_blocos(lista, tamanho_bloco=100):
    return [
        lista[i : i + tamanho_bloco]
        for i in range(0, len(lista), tamanho_bloco)
    ]


def retorna_uuid_institucional():
    lista = executar_query(
        True,
        """
        SELECT 
            a.co_uuid as uuid,
            v.no_inst_vinculo as vinculo,
            s.no_inst_situacao_funcional as situacao
        FROM institucional.tb_inst_pessoa a
        left join institucional.tb_inst_vinculo v 
            on a.co_inst_vinculo = v.co_seq_inst_vinculo 
        left join institucional.tb_inst_situac_funcional s
            on a.co_inst_situac_funcional = s.co_seq_inst_situac_funcional 
        WHERE a.st_ativo and v.st_ativo and s.st_ativo;
        """,
        string_institucional.get('preprod'),
    )

    return [dado.get('uuid') for dado in lista]


def atualiza_produtividade(uuids):
    url = 'https://pre-prod.gerais.mg.def.br/sgp/service/lancar-prestacao/teste-job'
    data = {
        'dataInicio': '2025-04-05',
        'dataFim': '2025-05-08',
        'uuidUsuario': uuids,
    }

    try:
        response = requests.post(url, json=data, timeout=10)

        if response.status_code == 200:
            print('Requisição bem-sucedida!')
            print('Resposta:', response.json())
        else:
            print(f'Falha na requisição. Status code: {response.status_code}')
            print('Resposta:', response.text)

    except Exception as e:
        print(e)


def main():
    atualiza_produtividade(retorna_uuid_institucional())


if __name__ == '__main__':
    main()
