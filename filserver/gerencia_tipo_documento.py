from database import consulta_para_lista, executar_query, inserir_sql
from utils.ambientes import string_fileserver, string_scsdp
from utils.gerenciar_json import carregar_de_json


def retorna_uuid_funcionalidade(funcionalidade, ambiente):
    return executar_query(
        True,
        f"""
        select 
            co_uuid
        from 
            scsdp.tb_funcionalidade
        where 
            upper(unaccent(trim(no_funcionalidade))) = 
            upper(unaccent(trim('{funcionalidade}')));
        """,
        ambiente,
    )


def retorna_uuid_projeto(projeto, ambiente):
    return executar_query(
        True,
        f"""
        select 
            co_uuid
        from 
            scsdp.tb_projeto
        where 
            upper(unaccent(trim(no_projeto))) = 
            upper(unaccent(trim('{projeto}')));
        """,
        ambiente,
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


def retorna_funcionalidades(lista_funcionalidades, ambiente):
    dicionario_funcionalidade = {}
    for funcionalidade in lista_funcionalidades:
        uuid = retorna_uuid_funcionalidade(funcionalidade, ambiente)
        dicionario_funcionalidade[funcionalidade] = uuid[0]['co_uuid']
    return dicionario_funcionalidade


def retorna_projetos(lista_projetos, ambiente):
    dicionario_projeto = {}
    for projeto in lista_projetos:
        uuid = retorna_uuid_projeto(projeto, ambiente)
        dicionario_projeto[projeto] = uuid[0]['co_uuid']
    return dicionario_projeto


def insert_tipo_documento(
    nome, sigla, tamanho, fl_habilita_campo_texto_1, ambiente
):
    query = f"""
        INSERT INTO fileserver.tb_tipo_documento(
            no_tipo_documento, sg_tipo_documento, nu_tamanho_documento, fl_habilita_campo_texto_1,
            st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1
        )
        SELECT 
            '{nome}', '{sigla}', {tamanho}, {fl_habilita_campo_texto_1},
            TRUE, now(), 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
        WHERE NOT EXISTS (
            SELECT 1
            FROM fileserver.tb_tipo_documento
            WHERE no_tipo_documento = '{nome}'
            AND sg_tipo_documento = '{sigla}'
        );
    """
    executar_query(False, query, ambiente)

    data = executar_query(
        True,
        f"""
        select co_seq_tipo_documento
        from fileserver.tb_tipo_documento
        WHERE no_tipo_documento = '{nome}'
        AND sg_tipo_documento = '{sigla}';
        """,
        ambiente,
    )

    return data[0]['co_seq_tipo_documento']


def main():
    tipos_documentos = carregar_de_json(
        r'filserver\data\tipo_documentos_cesv.json'
    )

    funcionalidades = retorna_funcionalidades(
        retorna_lista_funcionalidade(tipos_documentos), string_scsdp['dev']
    )

    projetos = retorna_projetos(
        retorna_lista_projeto(tipos_documentos), string_scsdp['dev']
    )

    print(funcionalidades)
    print(projetos)

    for tipo in tipos_documentos:

        if 'Portal' in tipo['funcionalidades']:
            fl_habilita_campo_texto_1 = 'TRUE'
        else:
            fl_habilita_campo_texto_1 = 'FALSE'

        tipo_documento_id = insert_tipo_documento(
            tipo['nome'],
            tipo['sigla'],
            tipo['tamanho'],
            fl_habilita_campo_texto_1,
            string_fileserver['preprod'],
        )

        print(tipo['nome'], tipo_documento_id)


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
