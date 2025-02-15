from database import consulta_para_lista
from utils.ambientes import string_depe
from utils.gerenciar_sql import salvar_em_sql

SCHEMA_DEPE = 'depe_antes_hml'

NOME_ARQUIVO = 'depe/data/teste'


def retorna_sql_insert_tb_campo(ambiente: str):
    query = f"""
        SELECT
            co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo,
            nu_ordem_codigo, tp_valor_campo, co_uuid, fl_campo_obrigatorio,
            fl_destacar_campo_front_end, ds_intervencao_externa
        FROM {SCHEMA_DEPE}.tb_campo
        WHERE st_ativo = TRUE
        ORDER BY co_seq_campo ASC;
    """
    dados_tb_campo = consulta_para_lista(string_depe[ambiente], query)

    for dado in dados_tb_campo:
        for chave, valor in dado.items():
            if valor is None or valor == 'nan':
                dado[chave] = 'NULL'

    sql_template = """
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT {co_seq_campo}, '{no_campo}', '{tp_campo}', '{ds_campo}', {qt_caracteres_codigo}, 
{nu_ordem_codigo}, '{tp_valor_campo}', {fl_campo_obrigatorio}, 
{fl_destacar_campo_front_end}, '{ds_intervencao_externa}', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = {co_seq_campo} AND no_campo = '{no_campo}'
);
INSERT INTO depe.th_campo_hist
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, nu_ordem_codigo, 
tp_valor_campo, fl_campo_obrigatorio, fl_destacar_campo_front_end, ds_intervencao_externa, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, st_ativo, dh_criacao, 
tp_operacao, nu_versao, co_uuid, co_uuid_1, dh_inicio_hist)
VALUES({co_seq_campo}, '{no_campo}', '{tp_campo}', '{ds_campo}', {qt_caracteres_codigo}, 
{nu_ordem_codigo}, '{tp_valor_campo}', {fl_campo_obrigatorio}, 
{fl_destacar_campo_front_end}, '{ds_intervencao_externa}', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61', now());
"""

    return ''.join(
        sql_template.format(
            **{
                key: (
                    value.replace("'", '') if isinstance(value, str) else value
                )
                for key, value in campo.items()
            }
        )
        for campo in dados_tb_campo
    )


def retorna_sql_insert_tb_regra(ambiente: str):
    query = f"""
        SELECT
            co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid
        FROM {SCHEMA_DEPE}.tb_regra
        WHERE st_ativo = TRUE
        ORDER BY co_seq_regra ASC;
    """
    dados_tb_regra = consulta_para_lista(string_depe[ambiente], query)

    for dado in dados_tb_regra:
        for chave, valor in dado.items():
            if valor is None or valor == 'nan':
                dado[chave] = 'NULL'

    sql_template = """
INSERT INTO depe.tb_regra
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1)
SELECT {co_seq_regra}, {co_campo}, {co_valor_campo}, '{tp_regra}', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_regra WHERE co_seq_regra = {co_seq_regra} AND co_campo = {co_campo}
);
INSERT INTO depe.th_regra_hist
(co_seq_regra, co_campo, co_valor_campo, tp_regra, co_uuid, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid_1, dh_inicio_hist)
VALUES({co_seq_regra}, {co_campo}, {co_valor_campo}, '{tp_regra}', uuid_generate_v4(), 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1,
'60a75feb-0170-4f38-a2cc-e31269440a61', now());
"""

    return ''.join(
        sql_template.format(
            **{
                key: (
                    value.replace("'", '') if isinstance(value, str) else value
                )
                for key, value in regra.items()
            }
        )
        for regra in dados_tb_regra
    )


def retorna_sql_insert_tb_campo_valor(ambiente: str):
    query = f"""
        SELECT
            co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg
        FROM {SCHEMA_DEPE}.tb_campo_valor
        WHERE st_ativo = TRUE
        ORDER BY co_seq_campo_valor ASC;
    """
    dados_tb_campo_valor = consulta_para_lista(string_depe[ambiente], query)

    for dado in dados_tb_campo_valor:
        for chave, valor in dado.items():
            if valor is None or valor == 'nan':
                dado[chave] = 'NULL'

    sql_template = """
INSERT INTO depe.tb_campo_valor
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT {co_seq_campo_valor}, {co_campo}, '{co_valor_sef_mg}', {co_campo_referencia}, '{ds_valor_sef_mg}', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_valor WHERE co_seq_campo_valor = {co_seq_campo_valor} AND co_campo = {co_campo}
);
INSERT INTO depe.th_campo_valor_hist
(co_seq_campo_valor, co_campo, co_valor_sef_mg, co_campo_referencia, ds_valor_sef_mg, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1, dh_inicio_hist)
VALUES({co_seq_campo_valor}, {co_campo}, '{co_valor_sef_mg}', {co_campo_referencia}, '{ds_valor_sef_mg}', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61', now());
"""

    return ''.join(
        sql_template.format(
            **{
                key: (
                    value.replace("'", '') if isinstance(value, str) else value
                )
                for key, value in campo_valor.items()
            }
        )
        for campo_valor in dados_tb_campo_valor
    )


def retorna_sql_insert_tb_averbacao(ambiente: str):
    query = f"""
        SELECT
            co_seq_averbacao, no_averbacao
        FROM {SCHEMA_DEPE}.tb_averbacao
        WHERE st_ativo = TRUE
        ORDER BY co_seq_averbacao ASC;
    """
    dados_tb_averbacao = consulta_para_lista(string_depe[ambiente], query)

    for dado in dados_tb_averbacao:
        for chave, valor in dado.items():
            if valor is None or valor == 'nan':
                dado[chave] = 'NULL'

    sql_template = """
INSERT INTO depe.tb_averbacao
(co_seq_averbacao, no_averbacao, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT {co_seq_averbacao}, '{no_averbacao}', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_averbacao WHERE co_seq_averbacao = {co_seq_averbacao}
);
INSERT INTO depe.th_averbacao_hist
(co_seq_averbacao, no_averbacao, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador,
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1, dh_inicio_hist)
VALUES({co_seq_averbacao}, '{no_averbacao}', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61', now());
"""

    return ''.join(
        sql_template.format(
            **{
                key: (
                    value.replace("'", '') if isinstance(value, str) else value
                )
                for key, value in averbacao.items()
            }
        )
        for averbacao in dados_tb_averbacao
    )


def retorna_sql_insert_tb_campo_calculo(ambiente: str):
    query = f"""
        SELECT
            co_seq_campo_calculo, co_campo, co_campo_valor, co_campo_para_calculo, ds_tipo_calculo
        FROM {SCHEMA_DEPE}.tb_campo_calculo
        WHERE st_ativo = TRUE
        ORDER BY co_seq_campo_calculo ASC;
    """
    dados_tb_campo_calculo = consulta_para_lista(string_depe[ambiente], query)

    for dado in dados_tb_campo_calculo:
        for chave, valor in dado.items():
            if valor is None or valor == 'nan':
                dado[chave] = 'NULL'

    sql_template = """
INSERT INTO depe.tb_campo_calculo
(co_seq_campo_calculo, co_campo, co_campo_valor, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT {co_seq_campo_calculo}, {co_campo}, {co_campo_valor}, {co_campo_para_calculo}, '{ds_tipo_calculo}', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_calculo WHERE co_seq_campo_calculo = {co_seq_campo_calculo} AND co_campo = {co_campo}
);
INSERT INTO depe.th_campo_calculo_hist
(co_seq_campo_calculo, co_campo, co_campo_valor, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1, dh_inicio_hist)
VALUES({co_seq_campo_calculo}, {co_campo}, {co_campo_valor}, {co_campo_para_calculo}, '{ds_tipo_calculo}', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61', now());
"""

    return ''.join(
        sql_template.format(
            **{
                key: (
                    value.replace("'", '') if isinstance(value, str) else value
                )
                for key, value in campo_calculo.items()
            }
        )
        for campo_calculo in dados_tb_campo_calculo
    )


def retorna_sql_insert_tb_configuracao_tabela(ambiente: str):
    query = f"""
        SELECT
            co_seq_configuracao_tabela, co_campo, nu_ordem_colunas
        FROM {SCHEMA_DEPE}.tb_configuracao_tabela
        WHERE st_ativo = TRUE
        ORDER BY co_seq_configuracao_tabela ASC;
    """
    dados_tb_configuracao_tabela = consulta_para_lista(
        string_depe[ambiente], query
    )

    for dado in dados_tb_configuracao_tabela:
        for chave, valor in dado.items():
            if valor is None or valor == 'nan':
                dado[chave] = 'NULL'

    sql_template = """
INSERT INTO depe.tb_configuracao_tabela
(co_seq_configuracao_tabela, co_campo, nu_ordem_colunas, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT {co_seq_configuracao_tabela}, {co_campo}, {nu_ordem_colunas}, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_configuracao_tabela WHERE co_seq_configuracao_tabela = {co_seq_configuracao_tabela} AND co_campo = {co_campo}
);
INSERT INTO depe.th_configuracao_tabela_hist
(co_seq_configuracao_tabela, co_campo, nu_ordem_colunas, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1, dh_inicio_hist)
VALUES({co_seq_configuracao_tabela}, {co_campo}, {nu_ordem_colunas}, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61', now());
"""

    return ''.join(
        sql_template.format(
            **{
                key: (
                    value.replace("'", '') if isinstance(value, str) else value
                )
                for key, value in configuracao_tabela.items()
            }
        )
        for configuracao_tabela in dados_tb_configuracao_tabela
    )


def retorna_sql_insert_tb_campo_averbacao(ambiente: str):
    query = f"""
        SELECT
            co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo
        FROM {SCHEMA_DEPE}.tb_campo_averbacao
        WHERE st_ativo = TRUE
        ORDER BY co_seq_campo_averbacao ASC;
    """
    dados_tb_campo_averbacao = consulta_para_lista(
        string_depe[ambiente], query
    )

    for dado in dados_tb_campo_averbacao:
        for chave, valor in dado.items():
            if valor is None or valor == 'nan':
                dado[chave] = 'NULL'

    sql_template = """
INSERT INTO depe.tb_campo_averbacao
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT {co_seq_campo_averbacao}, {co_averbacao}, {co_campo}, {co_campo_para_calculo}, '{ds_tipo_calculo}', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_campo_averbacao WHERE co_seq_campo_averbacao = {co_seq_campo_averbacao} AND co_averbacao = {co_averbacao}
);
INSERT INTO depe.th_campo_averbacao_hist
(co_seq_campo_averbacao, co_averbacao, co_campo, co_campo_para_calculo, ds_tipo_calculo, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1, dh_inicio_hist)
VALUES({co_seq_campo_averbacao}, {co_averbacao}, {co_campo}, {co_campo_para_calculo}, '{ds_tipo_calculo}', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61', now());
"""

    return ''.join(
        sql_template.format(
            **{
                key: (
                    value.replace("'", '') if isinstance(value, str) else value
                )
                for key, value in campo_averbacao.items()
            }
        )
        for campo_averbacao in dados_tb_campo_averbacao
    )


def retorna_sql_insert_tb_averbacao_campo(ambiente: str):
    query = f"""
        SELECT
            co_seq_averbacao_campo, co_averbacao, co_campo, co_campo_valor
        FROM {SCHEMA_DEPE}.tb_averbacao_campo
        WHERE st_ativo = TRUE
        ORDER BY co_seq_averbacao_campo ASC;
    """
    dados_tb_averbacao_campo = consulta_para_lista(
        string_depe[ambiente], query
    )

    for dado in dados_tb_averbacao_campo:
        for chave, valor in dado.items():
            if valor is None or valor == 'nan':
                dado[chave] = 'NULL'

    sql_template = """
INSERT INTO depe.tb_averbacao_campo
(co_seq_averbacao_campo, co_averbacao, co_campo, co_campo_valor, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT {co_seq_averbacao_campo}, {co_averbacao}, {co_campo}, {co_campo_valor}, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1 FROM depe.tb_averbacao_campo WHERE co_seq_averbacao_campo = {co_seq_averbacao_campo} AND co_averbacao = {co_averbacao}
);

INSERT INTO depe.th_averbacao_campo_hist
(co_seq_averbacao_campo, co_averbacao, co_campo, co_campo_valor, 
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1, dh_inicio_hist)
VALUES({co_seq_averbacao_campo}, {co_averbacao}, {co_campo}, {co_campo_valor}, 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, uuid_generate_v4(),
'60a75feb-0170-4f38-a2cc-e31269440a61', now());
"""

    return ''.join(
        sql_template.format(
            **{
                key: (
                    value.replace("'", '') if isinstance(value, str) else value
                )
                for key, value in averbacao_campo.items()
            }
        )
        for averbacao_campo in dados_tb_averbacao_campo
    )


def main():
    salvar_em_sql(retorna_sql_insert_tb_campo('dev'), NOME_ARQUIVO)
    salvar_em_sql(retorna_sql_insert_tb_regra('dev'), NOME_ARQUIVO)
    salvar_em_sql(retorna_sql_insert_tb_campo_valor('dev'), NOME_ARQUIVO)
    salvar_em_sql(retorna_sql_insert_tb_averbacao('dev'), NOME_ARQUIVO)
    salvar_em_sql(retorna_sql_insert_tb_campo_calculo('dev'), NOME_ARQUIVO)
    salvar_em_sql(
        retorna_sql_insert_tb_configuracao_tabela('dev'), NOME_ARQUIVO
    )
    salvar_em_sql(retorna_sql_insert_tb_campo_averbacao('dev'), NOME_ARQUIVO)
    salvar_em_sql(retorna_sql_insert_tb_averbacao_campo('dev'), NOME_ARQUIVO)


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
