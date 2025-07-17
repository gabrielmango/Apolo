"""
Script migracao de arquivos do sistema CESV/Fileserver

1. Carregar dados das candidaturas no CESV
2. Carregar dados dos arquivos no Fileserver
3. Fazer merge dos dados em um dataframe
4. Loop:
    4.1 Clonar arquivos com novos uuids no Fileserver (MongoDB)
    4.2 Inserir meta dados dos arquivos clonados no Fileserver (Postgres)

"""
import pandas as pd
import json
from database import PostgresConnection
from utils.ambientes import string_fileserver, string_cesv, string_mongo_fileserver
from utils.setup_logging import logging, setup_logging
from cesv.migracao_arquivos import query 
from utils.mongo_files import MigradorGridFS
from uuid import uuid4
from pprint import pprint

setup_logging('migracao_arquivos_cesv')


class MigracaoArquivos():
    def __init__(self, ambiente: str): 
        self.conn_postgres_cesv = string_cesv.get(ambiente)
        self.conn_postgres_fileserver = string_fileserver.get(ambiente)
        self.conn_mongo_fileserver = string_mongo_fileserver.get(ambiente)
        
        self.dados_cesv = None
        self.dados_fileserver = None
        self.dados_mergiados = None

    def executar(self):
        logging.info('Migração dos arquivos das candidaturas no sistema CESV.')  
        self.carregar_dados_cesv()
        self.carregar_dados_fileserver()
        self.merge_dados_cesv_e_fileserver()

        for index, row in self.dados_mergiados.iterrows():
            data = dict(row)
            if pd.notna(data['co_uuid_anexo_mongo']) and data['no_texto_2'] != 'arquivo_migrado':
                try:
                    logging.info(f'Processando arquivo da candidatura: {data["uuid_candidatura"]}')
                    novo_uuid_mongodb = self.inserir_fileserver_postgres(
                        co_uuid_2 = data['co_uuid_2'],
                        co_uuid_candidatura = data['uuid_candidatura'],
                        co_tipo_documento = data['co_tipo_documento'],
                        no_documento = self.buscar_nome_por_id(
                            int(data['co_tipo_documento'])
                        )
                    )
                    self.clonar_arquivo(
                        uuid_original=data['co_uuid_anexo_mongo'],
                        novo_uuid=novo_uuid_mongodb
                    )
                    self.atualizar_arquivo_migrado(data['co_seq_anexo'])
                except Exception as e:
                    logging.error(e)
                

    def carregar_dados_cesv(self):
        logging.info('Buscando dados de candidatura no CESV!')
        with PostgresConnection(self.conn_postgres_cesv) as conn:
            self.dados_cesv = conn.execute_query(query.DATA_CESV_QUERY)
        logging.info(f'Dados carregados: {len(self.dados_cesv)}')

    def carregar_dados_fileserver(self):
        logging.info('Buscando dados de arquivos no Fileserver!') 
        with PostgresConnection(self.conn_postgres_fileserver) as conn:
            self.dados_fileserver = conn.execute_query(query.DATA_FILESERVER_QUERY)
        logging.info(f'Dados carregados: {len(self.dados_fileserver)}')

    def merge_dados_cesv_e_fileserver(self):
        logging.info('Merge dos dados CESV e Fileserver!') 
        df_cesv = pd.DataFrame(self.dados_cesv)
        df_fileserver = pd.DataFrame(self.dados_fileserver)
        self.dados_mergiados = pd.merge(df_cesv, df_fileserver, on='co_uuid_2', how='left')
        self.dados_mergiados.to_sql(
            'teste_dados', self.conn_postgres_cesv, schema='public', if_exists='replace'
        )
        logging.info(f'Dados mergeados: {len(self.dados_mergiados)}')

    def clonar_arquivo(self, uuid_original, novo_uuid):
        logging.info(f'Clonando arquivo: {uuid_original}')
        
        COLECAO = 'ESTAGIO'
        BANCO = 'file'
        
        migrador = MigradorGridFS(
            self.conn_mongo_fileserver,
            BANCO
        )

        migrador.migrar_arquivo_com_uuid_personalizado(
            uuid_origem=uuid_original,
            novo_uuid=novo_uuid,
            colecao_origem=COLECAO,
            uri_destino=self.conn_mongo_fileserver,
            banco_destino=BANCO,
            colecao_destino=COLECAO,
        )

        logging.info(f'Arquivo clonado com novo uuid: {novo_uuid}')


    def inserir_fileserver_postgres(self, co_uuid_2, co_uuid_candidatura, co_tipo_documento, no_documento):
        novo_uuid = uuid4()
        INSERT_ANEXO = f"""
INSERT INTO fileserver.tb_anexo (
    co_uuid_2, co_tipo_documento, co_uuid_anexo_mongo, 
    no_documento, st_ativo, dh_criacao, 
    tp_operacao, nu_versao, co_uuid, co_uuid_1, no_texto_2
    )
VALUES(
    '{co_uuid_candidatura}', {co_tipo_documento}, '{novo_uuid}', 
    '{no_documento}', true, now(), 
    'CREATE', 1, uuid_generate_v4(), '{co_uuid_2}', 'migracao_arquivo_candidatura'
);
"""
        with PostgresConnection(self.conn_postgres_fileserver) as conn:
            self.dados_fileserver = conn.execute_modify(INSERT_ANEXO)
        
        return novo_uuid

        
    def buscar_nome_por_id(self, id_procurado):
        with open('cesv\migracao_arquivos\config.json', 'r', encoding='utf-8') as f:
            dados = json.load(f)

        for item in dados:
            if item['id'] == int(id_procurado):
                return item['no_documento']
    
    def atualizar_arquivo_migrado(self, id):
        query = f"UPDATE fileserver.tb_anexo SET no_texto_2 = 'arquivo_migrado' WHERE co_seq_anexo = {id};"
        with PostgresConnection(self.conn_postgres_fileserver) as conn:
           conn.execute_modify(query)





def main(ambiente: str = 'prod'):
    logging.info(f'Executando em: {ambiente.upper()}')
    migracao = MigracaoArquivos(ambiente)
    migracao.executar()

if __name__ == '__main__':
    from datetime import datetime

    logging.info('Processo iniciado!')

    start_time = datetime.now()

    main()

    end_time = datetime.now()
    logging.info(
        f'Tempo de execução: {str(end_time - start_time).split(".")[0]}'
    )
    logging.info('Processo finalizado!')