from concurrent.futures import ProcessPoolExecutor
from datetime import datetime

import numpy as np
import pandas as pd


def processa_dataframe(df):
    print(f'{datetime.now()}: Tamanho do DataFrame: {len(df)}')


if __name__ == '__main__':

    n_registros = 2_000_000
    data = {'coluna1': range(n_registros), 'coluna2': range(n_registros)}
    df = pd.DataFrame(data)

    partes = np.array_split(df, 4)

    with ProcessPoolExecutor(max_workers=4) as executor:
        executor.map(processa_dataframe, partes)
