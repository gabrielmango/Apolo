import pandas as pd
from dotenv import dotenv_values
from sqlalchemy import create_engine, text

config = dotenv_values('.env')

ATENDIMENTO_POSTGRES_PROD = config['ATENDIMENTO_POSTGRES_PROD']

engine_atendimento_prod = create_engine(ATENDIMENTO_POSTGRES_PROD)

query = """
select *
from public.vw_painel_senha vps 
where data_criacao >= NOW() - INTERVAL '6 months';
"""

data_atendimento = pd.read_sql(query, engine_atendimento_prod)

data_atendimento.to_excel('painel_senha_6_meses.xlsx', index=False)
