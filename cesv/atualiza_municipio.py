import re

from database import executar_query
from utils.ambientes import string_cesv
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def retorna_processos_seletivos(ambiente):
    return executar_query(
        True,
        """
        select 
            co_seq_processo_seletivo as id,
            ds_titulo_processo_seletivo as titulo
        from cesv.tb_processo_seletivo tps 
        where fl_processo_seletivo_antigo
        order by co_seq_processo_seletivo asc;
        """,
        string_cesv[ambiente],
    )


def extrair_municipio(nome_processo):
    padrao = r'^(?:PSS\s+)?(.+?)(?=\s*(?:-|–|Edital|\d{2}/\d{4}))'
    match = re.search(padrao, nome_processo)
    if match:
        municipio = match.group(1).strip()
    else:
        municipio = nome_processo.strip()

    municipio = re.sub(r'\d+', '', municipio).strip()
    return municipio


def main(ambiente: str = 'preprod'):
    processos_seletivos = retorna_processos_seletivos(ambiente)

    for item in processos_seletivos:
        municipio = extrair_municipio(item['titulo'])


if __name__ == '__main__':
    from datetime import datetime

    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado')
