import pandas as pd
from utils.ambientes import string_depe
from sqlalchemy import create_engine

TABELAS = [
    'tb_campo',
    'tb_regra',
    'tb_campo_valor',
    'tb_regra_campo',
    'tb_lancamento',
    'tb_arquivo_lancamento',
    'tb_arquivo_especificacao',
    'tb_lote_arquivo',
    'tb_averbacao',
    'tb_linha_lote',
    'tb_lancamento_lote',
    'tb_lancamento_linha',
    'tb_lancamento_arquivo',
    'tb_campo_calculo',
    'tb_configuracao_tabela',
    'tb_campo_averbacao',
    'tb_averbacao_campo',
    'tb_especificacao'
]

SCHEMA_ORIGEM = 'depe'
SCHEMA_DESTINO = 'depe'

# Conexão com o banco de dados
engine_depe = create_engine(string_depe['dev'])

def gerar_inserts_unico(data, tabela, arquivo_sql):
    """
    Gera comandos INSERT baseados nos dados do DataFrame e escreve no arquivo único.
    """
    with open(arquivo_sql, 'a', encoding='utf-8') as f:
        for _, row in data.iterrows():
            valores = ', '.join(
                [repr(valor) if pd.notnull(valor) else 'NULL' for valor in row]
            )
            insert_statement = f"INSERT INTO {SCHEMA_DESTINO}.{tabela} ({', '.join(data.columns)}) VALUES ({valores});\n"
            f.write(insert_statement)

def main():
    arquivo_sql = "DADOS_INICIAIS_DEPE.sql"
    # Limpa o arquivo caso já exista
    with open(arquivo_sql, 'w', encoding='utf-8') as f:
        f.write("-- Arquivo de inserções gerado automaticamente\n\n")
    
    for tabela in TABELAS:
        print(f"Processando tabela: {tabela}")
        try:
            # Carregar dados da tabela
            data = pd.read_sql(
                f"""
                SELECT *
                FROM {SCHEMA_ORIGEM}.{tabela}
                """,
                con=engine_depe
            )
            if not data.empty:
                # Adiciona comentários no arquivo indicando a tabela processada
                with open(arquivo_sql, 'a', encoding='utf-8') as f:
                    f.write(f"-- Inserções para a tabela {tabela}\n")
                
                # Gerar comandos INSERT e escrever no arquivo único
                gerar_inserts_unico(data, tabela, arquivo_sql)
            else:
                print(f"Tabela {tabela} está vazia, nenhum dado inserido no arquivo.")
        except Exception as e:
            print(f"Erro ao processar tabela {tabela}: {e}")

if __name__ == '__main__':
    main()
