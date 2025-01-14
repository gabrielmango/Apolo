import time

import pandas as pd
from dotenv import dotenv_values
from sqlalchemy import create_engine, text


def move_data():
    # Carrega as variáveis de ambiente
    config = dotenv_values('.env')

    # Conexões com os bancos de dados
    engine_base = create_engine(config['TST'])
    engine_destino = create_engine(config['BASE'])

    # Consulta para extrair os dados dos bancos de dados
    query = text(
        """
        SELECT *
        FROM cesv.tb_processo_seletivo
    """
    )

    # Executa a consulta e salva os dados em um DataFrame do Pandas
    df = pd.read_sql_query(query, engine_base)

    # Salva os dados no novo banco de dados
    df.to_sql(
        'tb_processo_seletivo',
        engine_destino,
        index=False,
        if_exists='replace',
    )


if __name__ == '__main__':
    start_time = time.time()

    move_data()

    end_time = time.time()

    execution_time_segs = end_time - start_time
    execution_time_min = execution_time_segs / 60
    print(f'Tempo total de execução: {execution_time_segs:.2f} segundos')
    print(f'Tempo total de execução: {execution_time_min:.2f} minutos')
