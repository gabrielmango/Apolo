from contextlib import contextmanager

import pandas as pd
from sqlalchemy import create_engine

from utils.ambientes import string_depe
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)

TABELAS = [
    'tb_campo',
    'tb_regra',
    'tb_campo_valor',
    'tb_regra_campo',
    # 'tb_lancamento',
    # 'tb_arquivo_lancamento',
    # 'tb_arquivo_especificacao',
    # 'tb_lote_arquivo',
    'tb_averbacao',
    # 'tb_linha_lote',
    # 'tb_lancamento_lote',
    # 'tb_lancamento_linha',
    # 'tb_lancamento_arquivo',
    'tb_campo_calculo',
    'tb_configuracao_tabela',
    'tb_campo_averbacao',
    'tb_averbacao_campo',
    'tb_especificacao',
]

SCHEMA_ORIGEM = 'depe_bkp_2025_01_30'
SCHEMA_DESTINO = 'depe'

engine_depe = create_engine(string_depe['base_teste'])


@contextmanager
def open_file(file_path, mode='a', encoding='utf-8'):
    file = open(file_path, mode, encoding=encoding)
    try:
        yield file
    finally:
        file.close()


def gerar_inserts_unico(data, tabela, arquivo_sql):
    with open_file(arquivo_sql) as f:
        for _, row in data.iterrows():
            valores = []
            for valor in row:
                if pd.isnull(valor):
                    valores.append('NULL')
                elif isinstance(valor, pd.Timestamp):
                    valores.append('now()')
                else:
                    valores.append(repr(valor))

            valores_joined = ', '.join(valores)
            insert_statement = f"INSERT INTO {SCHEMA_DESTINO}.{tabela} ({', '.join(data.columns)}) VALUES ({valores_joined});\n"
            f.write(insert_statement)


def main():
    arquivo_sql = 'DADOS_INICIAIS_DEPE_ZERO.sql'

    with open_file(arquivo_sql, 'w') as f:
        f.write('-- Arquivo de inserções gerado automaticamente\n\n')

    for tabela in TABELAS:
        logging.info(f'Processando tabela: {tabela}')
        try:
            with engine_depe.connect() as conn:
                data = pd.read_sql(
                    f"""
                    SELECT * 
                    FROM {SCHEMA_ORIGEM}.{tabela} 
                    WHERE st_ativo = TRUE
                    ORDER BY {tabela.replace('tb_', 'co_seq_')} ASC""",
                    con=conn,
                )

            if not data.empty:
                with open_file(arquivo_sql) as f:
                    f.write(f'-- Inserções para a tabela {tabela}\n')

                gerar_inserts_unico(data, tabela, arquivo_sql)
            else:
                logging.warning(
                    f'Tabela {tabela} está vazia, nenhum dado inserido no arquivo.'
                )
        except pd.errors.DatabaseError as e:
            logging.error(f'Erro ao processar tabela {tabela}: {e}')
        except Exception as e:
            logging.error(f'Erro inesperado ao processar tabela {tabela}: {e}')


if __name__ == '__main__':
    from datetime import datetime

    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    logging.info(
        f'Tempo de execução: {str(end_time - start_time).split(".")[0]}'
    )
    logging.info('Processo finalizado')
