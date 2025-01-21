from database import consulta_para_lista
from utils.ambientes import string_depe
from utils.gerenciar_sql import salvar_em_sql

SCHEMA_DEPE = 'depe_bkp_inicial'

NOME_ARQUIVO = 'depe/data/V07__DADOS_INICIAS_PROJETO_DEPE'


def salva_arquivo_sql(ambiente):
    dados_tb_campo = retorna_dados_tb_campo(string_depe[ambiente])
    sql_insert_tb_campo = retorna_sql_insert_tb_campo(dados_tb_campo)
    salvar_em_sql(sql_insert_tb_campo, NOME_ARQUIVO)


def retorna_dados_tb_campo(ambiente: str):
    query = f"""
        select
            co_seq_campo
            ,no_campo
            ,tp_campo
            ,ds_campo
            ,qt_caracteres_codigo
            ,nu_ordem_codigo
            ,tp_valor_campo
            ,co_uuid
            ,fl_campo_obrigatorio
            ,fl_destacar_campo_front_end
            ,ds_intervencao_externa
        from 
            {SCHEMA_DEPE}.tb_campo tc
        WHERE 
            st_ativo = TRUE
        ORDER BY 
            co_seq_campo ASC;
    """
    return consulta_para_lista(ambiente, query)


def retorna_sql_insert_tb_campo(dados_tb_campo) -> str:

    sql_string = ''

    for campo in dados_tb_campo:

        campo['no_campo'] = campo['no_campo'].replace("'", '')
        campo['ds_campo'] = campo['ds_campo'].replace("'", '')

        sql = f"""
-- {campo['no_campo']}
INSERT INTO depe.tb_campo
(co_seq_campo, no_campo, tp_campo, ds_campo, qt_caracteres_codigo, 
nu_ordem_codigo, tp_valor_campo, fl_campo_obrigatorio, 
fl_destacar_campo_front_end, ds_intervencao_externa,
sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, 
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
SELECT {campo['co_seq_campo']}, '{campo['no_campo']}', '{campo['tp_campo']}', 
'{campo['ds_campo']}', {campo['qt_caracteres_codigo']}, {campo['nu_ordem_codigo']}, 
'{campo['tp_valor_campo']}', {campo['fl_campo_obrigatorio']}, 
{campo['fl_destacar_campo_front_end']}, '{campo['ds_intervencao_externa']}', 
'INSERSAO_INICIAL', 'INSERSAO_INICIAL', 'INSERSAO_INICIAL', TRUE, now(), 'CREATE', 1, 
'{campo['co_uuid']}', '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (SELECT 1 FROM depe.tb_campo WHERE co_seq_campo = {campo['co_seq_campo']} 
AND no_campo = '{campo['no_campo']}');"""
        sql_string += sql

    return sql_string


def main():
    salva_arquivo_sql('dev')


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
