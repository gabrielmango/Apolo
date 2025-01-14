import time

import pandas as pd
from dotenv import dotenv_values
from sqlalchemy import create_engine, text

CONEXAO_BANCO = (
    'postgresql+psycopg2://postgres:dpmg2022@10.100.64.55:5432/bohr'
)
CONEXAO_BANCO_DEV = 'postgresql+psycopg2://gabriel_mango:k0CA5O1KfQ5eyrEm6nJR@10.230.32.19:5060/cordierita'

TST_BASE = 'postgresql+psycopg2://gabriel_mango:k0CA5O1KfQ5eyrEm6nJR@10.230.20.11:5060/prasio'
HML_BASE = 'postgresql+psycopg2://gabriel_mango:k0CA5O1KfQ5eyrEm6nJR@10.100.65.88:5060/prasio'

PREPROD_BASE = 'postgresql+psycopg2://gabriel_mango:k0CA5O1KfQ5eyrEm6nJR@10.100.65.227:5060/adena'

PROD_BASE = 'postgresql+psycopg2://gabriel_mango:k0CA5O1KfQ5eyrEm6nJR@10.100.66.140:5060/adena'


config = dotenv_values('.env')


def migrar_dados_patrimonio():

    engine_dba = create_engine(CONEXAO_BANCO)

    query = """
    select 
        1 as co_controle_inventario
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
    from patrimonio.tb_patrimonio tp 
    order by co_seq_patrimonio;
    """

    df_patrimonio = pd.read_sql_query(query, engine_dba)

    print(df_patrimonio.head())

    df_patrimonio.to_sql(
        'tb_patrimonio',
        con=create_engine(PROD_BASE),
        if_exists='append',
        index=False,
        schema='patrimonio',
    )

    print('Finalizado!')


def migrar_dados_patrimonio_2():

    engine_dba = create_engine(CONEXAO_BANCO)

    query = """
        select 
            nu_unidade_responsavel
            ,no_unidade_responsavel
            ,nu_unidade_contabil
            ,nu_patrimonio
            ,dt_tombamento
            ,ds_item_material
            ,nu_item_material
            ,tp_bem_patrimonial
            ,no_marca
            ,no_modelo
            ,nu_serie
            ,nu_elemento_item_despesa
            ,ds_destinacao_bem
            ,vl_bem_patrimonial
            ,no_responsavel
            ,no_corresponsavel
            ,'INSERT_MANUAL' as sg_projeto_modificador
            ,'INSERT_MANUAL' as sg_acao_modificadora
            ,'INSERT_MANUAL' as no_end_point_modificador
            , true as st_ativo
            ,now() as dh_criacao
            ,'CREATE' as tp_operacao
            ,1 as nu_versao
            ,'mudar' as co_uuid
            ,'60a75feb-0170-4f38-a2cc-e31269440a61' as co_uuid_1
        from public.aux_relatorio_1 ar
    """

    df_patrimonio = pd.read_sql_query(query, engine_dba)

    print(df_patrimonio.head())

    df_patrimonio.to_sql(
        'tb_patrimonio',
        con=create_engine(CONEXAO_BANCO),
        if_exists='append',
        index=False,
        schema='patrimonio',
    )

    print('Finalizado!')


def main(conn_string, file_name):

    data = pd.read_excel('MATERIAL_PERMANENTE.xlsx')
    planilhas = pd.read_excel(file_name, sheet_name=None)

    engine = create_engine(conn_string)

    for nome_planilha, data in planilhas.items():
        nome_planilha = (
            'aux_' + nome_planilha.replace(' ', '_').replace('.', '').lower()
        )
        print(f'Dados da planilha: {nome_planilha}')

        data = converter_colunas_para_datetime(data)

        data.to_sql(
            nome_planilha,
            con=engine,
            if_exists='replace',
            index=False,
            schema='public',
        )
        print(f'Planilha {nome_planilha} salva com sucesso!')


def converter_colunas_para_datetime(dataframe: pd.DataFrame) -> pd.DataFrame:
    colunas_datetime = [
        col for col in dataframe.columns if 'dt_' in col or 'dh_' in col
    ]

    for coluna in colunas_datetime:
        dataframe[coluna] = pd.to_datetime(dataframe[coluna], dayfirst=True)
        dataframe[coluna] = dataframe[coluna].dt.date
        print(f'Coluna {coluna} convertida')

    return dataframe


def carga_pessoas():

    data = pd.read_excel('pessoas.xlsx')

    data.to_sql(
        'responsavel_unidade',
        con=create_engine(CONEXAO_BANCO),
        if_exists='replace',
        index=False,
        schema='public',
    )


if __name__ == '__main__':
    start_time = time.time()

    # main(CONEXAO_BANCO, 'MATERIAL_PERMATENTE_2024_11_05.xlsx')
    migrar_dados_patrimonio()

    end_time = time.time()
    execution_time_segs = end_time - start_time
    execution_time_min = execution_time_segs / 60
    print(f'Tempo total de execução: {execution_time_segs:.2f} segundos')
    print(f'Tempo total de execução: {execution_time_min:.2f} minutos')
