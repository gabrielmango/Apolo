from database import lista_dados_consulta, make_query_and_extract_column
from utils.ambientes import string_base
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)

BANCOS = """
SELECT a.datname
FROM pg_database a 
WHERE a.datistemplate = false
ORDER BY a.datname;
"""

SCHEMAS = r"""
SELECT schema_name AS schema
FROM information_schema.schemata
WHERE schema_name LIKE '%auditoria%';
"""


def main():

    for key, value in string_base.items():
        logging.info(f'Iniciando a consulta para o ambiente: {key}')
        bancos = lista_dados_consulta(value, BANCOS)

        for banco in bancos:
            # logging.info(f'Consultando os schemas no banco: {banco}')
            new_string_con = value.replace('/postgres', '/' + banco)
            schemas = lista_dados_consulta(new_string_con, SCHEMAS)
            if not schemas:
                logging.info(
                    f'Schema auditoria não foi encontrado no banco {banco}'
                )


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
