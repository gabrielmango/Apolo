from sqlalchemy import create_engine, text


def executa_sql(conn_string: str, query_string: str):
    try:
        engine = create_engine(conn_string)
        conn = engine.raw_connection()
        cur = conn.cursor()
        cur.execute(text(query_string))
        conn.commit()
        cur.close()
        conn.close()

    except Exception as e:
        print(e)
