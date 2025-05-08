from pprint import pprint

import pandas as pd
from sqlalchemy import create_engine

from database import executar_query
from utils.ambientes import string_portalupload
from utils.gerenciar_sql import ler_arquivo_sql

SCHEMA_DESTINO = 'upload'


def reset_estrutura():
    query = ler_arquivo_sql(r'portalupload\estrutura_nova.sql')
    executar_query(False, query, string_portalupload.get('preprod'))


def insert_dados_basicos():
    query = ler_arquivo_sql(r'portalupload\registros_base.sql')
    executar_query(False, query, string_portalupload.get('preprod'))


def inserir_dados_antigos():
    engine_origem = create_engine(string_portalupload.get('prod'))
    engine_destino = create_engine(string_portalupload.get('preprod'))

    for tabela in ['tb_revista', 'tb_corregedoria', 'tb_anexo']:
        dados = pd.read_sql_table(
            table_name=tabela, schema='dbportalupload', con=engine_origem
        )
        dados.to_sql(
            name=tabela,
            con=engine_destino,
            schema=SCHEMA_DESTINO,
            if_exists='append',
            index=False,
        )

        query = f"""
        UPDATE {SCHEMA_DESTINO}.{tabela}
        SET sg_projeto_modificador = 'Inclusao_dados_antigos', 
            sg_acao_modificadora = 'Inclusao_dados_antigos', 
            no_end_point_modificador = 'Inclusao_dados_antigos'
        """

        executar_query(False, query, string_portalupload.get('preprod'))


def reset_sequences():
    query = ler_arquivo_sql(r'portalupload\reset_sequences.sql')
    executar_query(False, query, string_portalupload.get('preprod'))


def main():
    # reset_estrutura()
    insert_dados_basicos()
    inserir_dados_antigos()
    reset_sequences()


if __name__ == '__main__':
    main()
