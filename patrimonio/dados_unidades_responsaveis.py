import uuid
from datetime import datetime

import pandas as pd

from utils.ambientes import string_patrimonio
from utils.gerenciar_sql import salvar_em_sql


def envia_patrimonio(query, tabela):
    dados = pd.read_sql_query(query, string_patrimonio['dev'])
    dados.to_sql(
        tabela,
        string_patrimonio['dev'],
        index=False,
        if_exists='append',
        schema='patrimonio_new',
    )


def main():
    query = """
select
	distinct 
	tp.nu_unidade_responsavel,
	tp.no_unidade_responsavel 
from patrimonio.tb_patrimonio tp
where tp.nu_unidade_responsavel is not null
"""
    dados = pd.read_sql_query(query, string_patrimonio['dev'])

    for index, row in dados.iterrows():
        query_unidade = f"""
INSERT INTO patrimonio_new.tb_unidade_patrimonial
(nu_unidade_patrimonial, no_unidade_patrimonial, sg_projeto_modificador, sg_acao_modificadora, no_end_point_modificador, st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
VALUES({row['nu_unidade_responsavel']}, '{row['no_unidade_responsavel']}', 'manual', 'manual', 'manual', true, now(), 'CREATE', 1, '{uuid.uuid4()}', '60a75feb-0170-4f38-a2cc-e31269440a61');\n
"""
        salvar_em_sql(query_unidade, 'patrimonio')

    print('Patrimonio enviado com sucesso!')


if __name__ == '__main__':
    main()
