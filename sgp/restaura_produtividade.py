import requests

from database import executar_query
from utils.ambientes import string_institucional, url_sgp

URL = url_sgp.get('preprod')


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
        WHERE 
            a.st_ativo and v.st_ativo and s.st_ativo and
            s.co_seq_inst_situac_funcional not in (18, 19, 21, 22, 23, 24, 29);
        """,
        string_institucional.get('preprod'),
    )

    return [dado.get('uuid') for dado in lista]


def dividir_em_blocos(lista, tamanho_bloco=100):
    return [
        lista[i : i + tamanho_bloco]
        for i in range(0, len(lista), tamanho_bloco)
    ]


def atualiza_produtividade(uuids):
    data = {
        'dataInicio': '2025-04-05',
        'dataFim': '2025-05-08',
        'uuidUsuario': uuids,
    }
    print(uuids)
    try:
        response = requests.patch(URL, json=data, timeout=100)

        if response.status_code == 200:
            print('Requisição bem-sucedida!')
            print('Resposta:', response.json())
        else:
            print(f'Falha na requisição. Status code: {response.status_code}')
            print('Resposta:', response.text)

    except Exception as e:
        print(e)


def main():
    for uuids in dividir_em_blocos(retorna_uuid_institucional()):
        atualiza_produtividade(uuids)


if __name__ == '__main__':
    main()
