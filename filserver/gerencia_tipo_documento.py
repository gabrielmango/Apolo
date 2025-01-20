from database import consulta_para_lista
from utils.ambientes import string_fileserver, string_scsdp
from utils.gerenciar_json import carregar_de_json


def retorna_dicionario(ambiente, query):
    data = consulta_para_lista(ambiente, query)
    return data[0]['co_uuid'] if len(data) == 1 else None


def retorna_uuid_funcionalidade(funcionalidade, ambiente):
    return retorna_dicionario(
        ambiente,
        f"""
        select 
            co_uuid
        from 
            scsdp.tb_funcionalidade
        where 
            upper(unaccent(trim(no_funcionalidade))) = 
            upper(unaccent(trim('{funcionalidade}')));
        """,
    )


def retorna_uuid_projeto(projeto, ambiente):
    return retorna_dicionario(
        ambiente,
        f"""
        select 
            co_uuid
        from 
            scsdp.tb_projeto
        where 
            upper(unaccent(trim(no_projeto))) = 
            upper(unaccent(trim('{projeto}')));
        """,
    )


def retorna_lista_funcionalidade(tipos_documentos):
    lista_funcionalidades = set()
    for tipo in tipos_documentos:
        for funcionalidade in tipo['funcionalidades']:
            lista_funcionalidades.add(funcionalidade)
    return list(lista_funcionalidades)


def retorna_lista_projeto(tipos_documentos):
    lista_projetos = set()
    for tipo in tipos_documentos:
        for projeto in tipo['projetos']:
            lista_projetos.add(projeto)
    return list(lista_projetos)


def retorna_dicionario_funcionalidade(lista_funcionalidades, ambiente):
    dicionario_funcionalidade = {}
    for funcionalidade in lista_funcionalidades:
        uuid = retorna_uuid_funcionalidade(funcionalidade, ambiente)
        dicionario_funcionalidade[funcionalidade] = uuid
    return dicionario_funcionalidade


def retorna_dicionario_projeto(lista_projetos, ambiente):
    dicionario_projeto = {}
    for projeto in lista_projetos:
        uuid = retorna_uuid_projeto(projeto, ambiente)
        dicionario_projeto[projeto] = uuid
    return dicionario_projeto


def main():
    tipos_documentos = carregar_de_json(
        r'filserver\data\tipo_documentos_cesv.json'
    )

    funcionalidades = retorna_dicionario_funcionalidade(
        retorna_lista_funcionalidade(tipos_documentos), string_scsdp['dev']
    )

    projetos = retorna_dicionario_projeto(
        retorna_lista_projeto(tipos_documentos), string_scsdp['dev']
    )


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
