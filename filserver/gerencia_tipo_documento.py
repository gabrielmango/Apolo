from database import consulta_para_lista, executar_query, inserir_sql
from utils.ambientes import string_fileserver, string_gerais, string_scsdp
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


def retorna_id_agrupador(agrupador, ambiente):
    return executar_query(
        True,
        f"""
        select 
            co_seq_agrupador
        from 
            gerais.tb_agrupador
        where 
            upper(unaccent(trim(no_agrupador))) = 
            upper(unaccent(trim('{agrupador}')));
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


def insert_tb_tipo_doc_funcion_scsdp(
    ambiente, id_tipo_documento, uuid_funcionalidade
):
    executar_query(
        False,
        f"""
        INSERT INTO fileserver.tb_tipo_doc_funcion_scsdp(
            co_tipo_documento, co_uuid_funcionalidade_scsdp, 
            st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1
        )
        SELECT 
            {id_tipo_documento}, '{uuid_funcionalidade}', 
            TRUE, now(), 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
        WHERE NOT EXISTS (
            SELECT 1
            FROM fileserver.tb_tipo_doc_funcion_scsdp
            WHERE co_tipo_documento = {id_tipo_documento}
            AND co_uuid_funcionalidade_scsdp = '{uuid_funcionalidade}'
        );
        """,
        ambiente,
    )


def insert_tb_tipo_doc_projeto_scsdp(
    ambiente, id_tipo_documento, uuid_projeto
):
    executar_query(
        False,
        f"""
        INSERT INTO fileserver.tb_tipo_doc_projeto_scsdp(
            co_tipo_documento, co_uuid_projeto_scsdp, 
            st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1
        )
        SELECT 
            {id_tipo_documento}, '{uuid_projeto}', 
            TRUE, now(), 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
        WHERE NOT EXISTS (
            SELECT 1
            FROM fileserver.tb_tipo_doc_projeto_scsdp
            WHERE co_tipo_documento = {id_tipo_documento}
            AND co_uuid_projeto_scsdp = '{uuid_projeto}'
        );
        """,
        ambiente,
    )


def insert_tb_tipo_doc_extensao_enum(ambiente, id_tipo_documento, extensao):
    executar_query(
        False,
        f"""
        INSERT INTO fileserver.tb_tipo_doc_extensao_enum(
            co_tipo_documento, no_extensao_enum, 
            st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1
        )
        SELECT 
            {id_tipo_documento}, '{extensao}', 
            TRUE, now(), 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
        WHERE NOT EXISTS (
            SELECT 1
            FROM fileserver.tb_tipo_doc_extensao_enum
            WHERE co_tipo_documento = {id_tipo_documento}
            AND no_extensao_enum = '{extensao}'
        );
        """,
        ambiente,
    )


def cadastro_tipo_documento(ambiente: str = 'dev'):
    print('Iniciando cadastro de tipos de documentos...')
    tipos_documentos = carregar_de_json(
        r'filserver\data\tipo_documentos_cesv.json'
    )

    funcionalidades = retorna_funcionalidades(
        retorna_lista_funcionalidade(tipos_documentos), string_scsdp[ambiente]
    )

    projetos = retorna_projetos(
        retorna_lista_projeto(tipos_documentos), string_scsdp[ambiente]
    )

    for tipo in tipos_documentos:

        print(f'Inserindo tipo de documento: {tipo["nome"]}')

        if 'Portal' in tipo['funcionalidades']:
            fl_habilita_campo_texto_1 = 'TRUE'
        else:
            fl_habilita_campo_texto_1 = 'FALSE'

        tipo_documento_id = insert_tipo_documento(
            tipo['nome'],
            tipo['sigla'],
            tipo['tamanho'],
            fl_habilita_campo_texto_1,
            string_fileserver[ambiente],
        )

        for funcionalidade in tipo['funcionalidades']:
            uuid_funcionalidade = funcionalidades[funcionalidade]

            insert_tb_tipo_doc_funcion_scsdp(
                string_fileserver[ambiente],
                tipo_documento_id,
                uuid_funcionalidade,
            )

        for projeto in tipo['projetos']:
            uuid_projeto = projetos[projeto]

            insert_tb_tipo_doc_projeto_scsdp(
                string_fileserver[ambiente],
                tipo_documento_id,
                uuid_projeto,
            )

        for extensao in tipo['extensoes']:
            insert_tb_tipo_doc_extensao_enum(
                string_fileserver[ambiente],
                tipo_documento_id,
                extensao,
            )


def adiciona_projeto_agrupador(ambiente: str = 'dev'):
    print('Adicionando projeto ao agrupador CESV...')
    uuid_projeto = retorna_uuid_projeto(
        'Sistema de Gestão de Estágio - SGE', string_scsdp[ambiente]
    )[0]['co_uuid']

    id_agrupador = retorna_id_agrupador('CESV', string_gerais[ambiente])[0][
        'co_seq_agrupador'
    ]

    executar_query(
        False,
        f"""
        INSERT INTO gerais.tb_agrupador_projeto(
            co_agrupador, co_uuid_projeto,
            st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1,
            sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador
        )
        SELECT 
            {id_agrupador}, '{uuid_projeto}',
            TRUE, now(), 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61',
            'manual', 'manual', 'manual'
        WHERE NOT EXISTS (
            SELECT 1
            FROM gerais.tb_agrupador_projeto
            WHERE co_agrupador = {id_agrupador}
            AND co_uuid_projeto = '{uuid_projeto}'
        );
        """,
        string_gerais[ambiente],
    )

    print(
        'Projeto Sistema de Gestão de Estágio - SGE adicionado no agrupador CESV!'
    )


def cadastra_token_sistema(ambiente: str = 'dev'):
    print('Gerando token de sistema...')
    perfis = [
        {'nome': 'STI - Administrador', 'sigla': 'STI-A'},
        {'nome': 'SISTEMA - ADMINISTRADOR', 'sigla': 'SISADM'},
    ]
    query_perf = (
        'SELECT co_seq_perfil FROM scsdp.tb_perfil '
        "WHERE upper(unaccent(trim(no_perfil))) = upper(unaccent(trim('{nome}'))) "
        "AND upper(unaccent(trim(sg_perfil))) = upper(unaccent(trim('{sigla}')))"
    )
    for p in perfis:
        resultado = executar_query(
            True, query_perf.format(**p), string_scsdp[ambiente]
        )
        p['id'] = resultado[0]['co_seq_perfil'] if resultado else None

    # Inserção e consulta dos sistemas
    sistemas = [
        {
            'nome': 'SGE - Sistema de Gestão de Estágio',
            'sigla': 'SGE',
            'descricao': 'Sistema de Gestão de Estágio',
        },
        {
            'nome': 'Usuário Externo ',
            'sigla': 'USUEXT',
            'descricao': 'Usuário Externo ',
        },
    ]
    query_sis_insert = (
        'INSERT INTO scsdp.tb_sistema(no_sistema, sg_sistema, ds_sistema, st_ativo, dh_criacao, tp_operacao, nu_versao, '
        'co_uuid, co_uuid_1, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador) '
        "SELECT '{nome}', '{sigla}', '{descricao}', TRUE, now(), 'CREATE', 1, uuid_generate_v4(), "
        "'60a75feb-0170-4f38-a2cc-e31269440a61', 'INSERSAO_MANUAL', 'INSERSAO_MANUAL', 'INSERSAO_MANUAL' "
        'WHERE NOT EXISTS (SELECT 1 FROM scsdp.tb_sistema WHERE '
        "upper(unaccent(trim(no_sistema))) = upper(unaccent(trim('{nome}'))) "
        "AND upper(unaccent(trim(sg_sistema))) = upper(unaccent(trim('{sigla}'))));"
    )
    query_sis_select = (
        'SELECT co_seq_sistema FROM scsdp.tb_sistema '
        "WHERE upper(unaccent(trim(no_sistema))) = upper(unaccent(trim('{nome}'))) "
        "AND upper(unaccent(trim(sg_sistema))) = upper(unaccent(trim('{sigla}')))"
    )
    for s in sistemas:
        executar_query(
            False, query_sis_insert.format(**s), string_scsdp[ambiente]
        )
        resultado = executar_query(
            True, query_sis_select.format(**s), string_scsdp[ambiente]
        )
        s['id'] = resultado[0]['co_seq_sistema'] if resultado else None

    tokens = [(s['id'], p['id']) for s in sistemas for p in perfis]
    query_token = (
        'INSERT INTO scsdp.tb_sistema_perfil(co_sistema, co_perfil, st_ativo, dh_criacao, tp_operacao, nu_versao, '
        'co_uuid, co_uuid_1, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador) '
        "SELECT {id_sistema}, {id_perfil}, TRUE, now(), 'CREATE', 1, uuid_generate_v4(), "
        "'60a75feb-0170-4f38-a2cc-e31269440a61', 'INSERSAO_MANUAL', 'INSERSAO_MANUAL', 'INSERSAO_MANUAL' "
        'WHERE NOT EXISTS (SELECT 1 FROM scsdp.tb_sistema_perfil WHERE co_sistema = {id_sistema} AND co_perfil = {id_perfil});'
    )
    for id_sistema, id_perfil in tokens:
        executar_query(
            False,
            query_token.format(id_sistema=id_sistema, id_perfil=id_perfil),
            string_scsdp[ambiente],
        )


if __name__ == '__main__':
    from datetime import datetime

    print(f'\nProcesso iniciado: {datetime.now()} \n')
    start_time = datetime.now()

    for ambiente in ['dev', 'tst', 'hml', 'preprod', 'prod']:
        print(f'\nAmbiente: {ambiente}')

        cadastro_tipo_documento(ambiente)
        adiciona_projeto_agrupador(ambiente)
        cadastra_token_sistema(ambiente)

    end_time = datetime.now()
    print(f'\nProcesso finalizado: {datetime.now()} \n')

    full_time = end_time - start_time
    full_time = str(full_time).split('.')[0]
    print(f'Tempo de execução: {full_time}')
