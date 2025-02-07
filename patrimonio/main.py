import pandas as pd

from utils.ambientes import string_patrimonio


def envia_patrimonio(query, tabela):
    dados = pd.read_sql_query(query, string_patrimonio['dev'])
    dados.to_sql(
        tabela,
        string_patrimonio['dev'],
        index=False,
        if_exists='append',
        schema='patrimonio_new',
    )


tb_controle_inventario = """
SELECT
    co_seq_controle_inventario
    ,nu_ano_inventario
    ,st_inventario
    ,ds_observacao
    ,sg_projeto_modificador
    ,sg_acao_modificadora
    ,no_end_point_modificador
    ,st_ativo
    ,dh_criacao
    ,dh_alteracao
    ,tp_operacao
    ,nu_versao
    ,co_uuid
    ,co_uuid_1
FROM patrimonio.tb_controle_inventario
"""

th_controle_inventario_hist = """
SELECT
    co_seq_controle_inventar_hist
    ,co_seq_controle_inventario
    ,nu_ano_inventario
    ,st_inventario
    ,ds_observacao
    ,sg_projeto_modificador
    ,sg_acao_modificadora
    ,no_end_point_modificador
    ,st_ativo
    ,dh_criacao
    ,dh_alteracao
    ,tp_operacao
    ,nu_versao
    ,co_uuid
    ,co_uuid_1
    ,dh_inicio_hist
    ,dh_fim_hist
FROM patrimonio.th_controle_inventario_hist
WHERE co_seq_controle_inventario = 1
"""

# Envia dados para a base de dados de desenvolvimento

envia_patrimonio(tb_controle_inventario, 'tb_controle_inventario')
envia_patrimonio(th_controle_inventario_hist, 'th_controle_inventario_hist')

tb_patrimonio = """
SELECT
co_seq_patrimonio
,co_controle_inventario
,nu_unidade_contabil
,nu_unidade_responsavel
,no_unidade_responsavel
,tp_bem_patrimonial
,nu_patrimonio
,ds_item_material
,ds_estado_conservacao_bem
,dt_tombamento
,vl_bem_patrimonial
,nu_elemento_item_despesa
,nu_unidade_gerencial
,no_unidade_gerencial
,no_orgao_terceiro_responsavel
,nu_item_material
,no_marca
,no_modelo
,nu_placa
,nu_serie
,ds_destinacao_bem
,no_orgao_terceiro_destino
,nu_unidade_destino
,no_unidade_destino
,no_convenio
,nu_docum_ultima_movimentacao
,no_responsavel
,no_corresponsavel
,vl_tombamento
,tp_documento_incorporacao_bem
,nu_documento_incorporacao_bem
,dt_contabilizacao
,dt_reavaliacao
,tp_documento_reavaliacao_bem
,nu_documento_reavaliacao_bem
,vl_reavaliacao
,tp_plaqueta
,dt_confirmacao_documento
,dt_ultima_extracao_siad
,fl_patrimonio_fora_unidade
,ds_observacao
,ds_situacao_bem_inventariado
,fl_selecao_manual_situacao
,sg_projeto_modificador
,sg_acao_modificadora
,no_end_point_modificador
,st_ativo
,dh_criacao
,dh_alteracao
,tp_operacao
,nu_versao
,co_uuid
,co_uuid_1
,nu_sala
FROM patrimonio.tb_patrimonio
"""

th_patrimonio_hist = """
SELECT
co_seq_patrimonio_hist
,co_seq_patrimonio
,co_controle_inventario
,nu_unidade_contabil
,nu_unidade_responsavel
,no_unidade_responsavel
,tp_bem_patrimonial
,nu_patrimonio
,ds_item_material
,ds_estado_conservacao_bem
,dt_tombamento
,vl_bem_patrimonial
,nu_elemento_item_despesa
,nu_unidade_gerencial
,no_unidade_gerencial
,no_orgao_terceiro_responsavel
,nu_item_material
,no_marca
,no_modelo
,nu_placa
,nu_serie
,ds_destinacao_bem
,no_orgao_terceiro_destino
,nu_unidade_destino
,no_unidade_destino
,no_convenio
,nu_docum_ultima_movimentacao
,no_responsavel
,no_corresponsavel
,vl_tombamento
,tp_documento_incorporacao_bem
,nu_documento_incorporacao_bem
,dt_contabilizacao
,dt_reavaliacao
,tp_documento_reavaliacao_bem
,nu_documento_reavaliacao_bem
,vl_reavaliacao
,tp_plaqueta
,dt_confirmacao_documento
,dt_ultima_extracao_siad
,fl_patrimonio_fora_unidade
,ds_observacao
,ds_situacao_bem_inventariado
,fl_selecao_manual_situacao
,sg_projeto_modificador
,sg_acao_modificadora
,no_end_point_modificador
,st_ativo
,dh_criacao
,dh_alteracao
,tp_operacao
,nu_versao
,co_uuid
,co_uuid_1
,dh_inicio_hist
,dh_fim_hist
,nu_sala
FROM patrimonio.th_patrimonio_hist
"""

envia_patrimonio(tb_patrimonio, 'tb_patrimonio')
envia_patrimonio(th_patrimonio_hist, 'th_patrimonio_hist')

tb_patrimonio_excecao = """
SELECT
co_seq_patrimonio_excecao
,tp_situacao
,nu_patrimonio
,ds_patrimonio
,sg_projeto_modificador
,sg_acao_modificadora
,no_end_point_modificador
,st_ativo
,dh_criacao
,dh_alteracao
,tp_operacao
,nu_versao
,co_uuid
,co_uuid_1
,co_controle_inventario
,nu_unidade_responsavel
,fl_situacao_cadastro_manual
FROM patrimonio.tb_patrimonio_excecao
"""

th_patrimonio_excecao_hist = """
SELECT
co_seq_patrimonio_excecao_hist
,co_seq_patrimonio_excecao
,tp_situacao
,nu_patrimonio
,ds_patrimonio
,sg_projeto_modificador
,sg_acao_modificadora
,no_end_point_modificador
,st_ativo
,dh_criacao
,dh_alteracao
,tp_operacao
,nu_versao
,co_uuid
,co_uuid_1
,dh_inicio_hist
,dh_fim_hist
,co_controle_inventario
,nu_unidade_responsavel
,fl_situacao_cadastro_manual
FROM patrimonio.th_patrimonio_excecao_hist
"""

envia_patrimonio(tb_patrimonio_excecao, 'tb_patrimonio_excecao')
envia_patrimonio(th_patrimonio_excecao_hist, 'th_patrimonio_excecao_hist')
