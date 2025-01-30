import pandas as pd
import psycopg2
from sqlalchemy import create_engine, text
from sqlalchemy.exc import SQLAlchemyError


def executa_sql_sem_resultados(conn_string: str, query_string: str):
    """Executa uma query sem retornar resultados."""
    try:
        engine = create_engine(conn_string)
        conn = engine.raw_connection()
        cur = conn.cursor()
        cur.execute(text(query_string))
        conn.commit()
        cur.close()
        conn.close()
        print('Query executada com sucesso (sem resultados).')
    except Exception as e:
        print(f'Erro ao executar a query sem resultados: {e}')


def executa_sql_com_resultados(conn_string: str, query_string: str):
    """Executa uma query e retorna os resultados."""
    try:
        conn = psycopg2.connect(conn_string.replace('+psycopg2', ''))
        with conn.cursor() as cursor:
            cursor.execute(query_string)
            resultados = cursor.fetchall()
        return resultados
    except Exception as e:
        print(f'Erro ao executar a query e retornar resultados: {e}')
        return None
    finally:
        conn.close()


def executa_sql_com_retorno(
    conn_string: str, query_string: str, retorna_resultado: bool
):
    """Executa a query de acordo com a flag retorna_resultado e o tipo de retorno desejado."""
    if retorna_resultado:
        return executa_sql_com_resultados(conn_string, query_string)
    else:
        executa_sql_sem_resultados(conn_string, query_string)


def executa_sql(conn_string: str, query_string: str):
    try:
        engine = create_engine(conn_string)
        conn = engine.raw_connection()
        cur = conn.cursor()
        cur.execute(query_string)
        conn.commit()
        cur.close()
        conn.close()

    except Exception as e:
        print(e)


def consulta_para_lista(conn_string: str, query_string: str):
    data = pd.read_sql(text(query_string), conn_string)
    return data.to_dict(orient='records')


def lista_dados_consulta(conn_string: str, query_string: str):
    data = consulta_para_lista(conn_string, query_string)
    dados = []
    for dado in data:
        column = list(dado.keys())[0]
        dados.append(dado[column])
    return dados


def make_query_and_extract_column(query: str, engine) -> list:
    """Executa uma query SQL e extrai uma coluna específica como uma lista."""
    with engine.connect() as conn:
        df = pd.read_sql_query(text(query), conn)
        column_name = list(df.keys())[0]
        dados = []
        dados.append(df[column_name])

    return dados


def insert_data(conn_string: str, query_string: str):
    try:
        engine = create_engine(conn_string)
        conn = engine.raw_connection()
        cur = conn.cursor()
        cur.execute(text(query_string))
        conn.commit()
        cur.close()
        conn.close()
    except Exception as e:
        print(f'Erro: {e}')


def inserir_sql(connection_string, sql):
    engine = create_engine(connection_string)

    try:
        # Conectando ao banco e executando o comando
        with engine.begin() as connection:  # engine.begin() gerencia a transação automaticamente
            result = connection.execute(text(sql))
            # print(result)
            # print(f"Comando executado com sucesso. Linhas afetadas: {result.rowcount}")
            connection.execute(text(sql))
    except SQLAlchemyError as e:
        print(f'Ocorreu um erro: {e}')


def executar_query(retornar_dados: bool, query: str, string_conexao: str):
    engine = create_engine(string_conexao)

    if retornar_dados:
        try:
            # Executa a consulta SELECT
            with engine.connect() as connection:
                result = connection.execute(text(query))
                colunas = result.keys()
                dados = [dict(zip(colunas, row)) for row in result.fetchall()]
                return dados
        except SQLAlchemyError as e:
            print(f'Ocorreu um erro ao consultar: {e}')
            return []
    else:
        try:
            # Executa a query fornecida (ex.: INSERT, UPDATE, DELETE)
            with engine.begin() as connection:
                connection.execute(text(query))
        except SQLAlchemyError as e:
            print(f'Ocorreu um erro ao executar a query: {e}')
