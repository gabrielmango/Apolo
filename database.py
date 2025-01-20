import pandas as pd
import psycopg2
from sqlalchemy import create_engine, text


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
    data = pd.read_sql(query_string, conn_string)
    return data.to_dict(orient='records')
