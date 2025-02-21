import re

from database import executar_query
from utils.ambientes import string_cesv, string_localizacao
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


def trata_excecoes(text):
    if text == 'Monte Sto. de Minas':
        return 'Monte Santo de Minas'
    elif text == 'S.Sebastião do Paraíso':
        return 'São Sebastiao do Paraiso'
    elif text == 'Belo Horizonte/Barreiro':
        return 'Belo Horizonte'
    elif text == 'BH/Barreiro':
        return 'Belo Horizonte'
    elif text == 'BH/Psicossocial':
        return 'Belo Horizonte'
    elif text == 'Belo Horizonte/ASCOM':
        return 'Belo Horizonte'
    elif text == 'Belo Horizonte/Ascom':
        return 'Belo Horizonte'
    elif text == 'S. Sebastião do Paraíso':
        return 'São Sebastiao do Paraíso'
    elif text == 'S. João Nepomuceno':
        return 'São João Nepomuceno'
    elif text == 'Barreiro/BH':
        return 'Belo Horizonte'
    elif text == 'S Sebastião do Paraiso':
        return 'São Sebastiao do Paraíso'
    elif text == 'S. Sebastião do Paraíso':
        return 'São Sebastiao do Paraíso'
    else:
        return text


def retorna_uuid_municipio(ambiente, municipio):
    if municipio == 'Brasília/DF':
        query = """
            select
            co_uuid
            from 
                localizacao.tb_municipio tm 
            where 
                co_unidade_federacao = 7 and 
                UPPER(unaccent(TRIM(no_municipio))) = 
                UPPER(unaccent(TRIM('Brasília')))
        """
        municipio = executar_query(True, query, string_localizacao[ambiente])
        if municipio:
            return municipio[0]['co_uuid']
    else:
        query = f"""
            select
            co_uuid
            from 
                localizacao.tb_municipio tm 
            where 
                co_unidade_federacao = 11 and 
                UPPER(unaccent(TRIM(no_municipio))) = 
                UPPER(unaccent(TRIM('{municipio}')))
        """
        municipio = executar_query(True, query, string_localizacao[ambiente])
        if municipio:
            return municipio[0]['co_uuid']
        return None


def extrair_municipio(nome_processo):
    padrao = r'^(?:PSS\s+)?(.+?)(?=\s*(?:-|–|Edital|\d{2}/\d{4}))'
    match = re.search(padrao, nome_processo)
    if match:
        municipio = match.group(1).strip()
    else:
        municipio = nome_processo.strip()

    municipio = re.sub(r'\d+', '', municipio).strip()
    return trata_excecoes(municipio)


def main(ambiente: str = 'prod'):
    processos_seletivos = retorna_processos_seletivos(ambiente)

    for processo in processos_seletivos:
        processo['municipio'] = extrair_municipio(processo['titulo'])
        processo['uuid_municipio'] = retorna_uuid_municipio(
            ambiente, processo['municipio']
        )


if __name__ == '__main__':
    from datetime import datetime

    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado')
