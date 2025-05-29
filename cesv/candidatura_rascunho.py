import pandas as pd

from database import executar_query, list_to_sql
from utils.ambientes import (string_cesv, string_contato, string_fileserver,
                             string_geral_pessoa, string_localizacao)
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def candidaturas_rascunho(ambiente):
    return executar_query(
        True,
        """
        SELECT 
            co_uuid_2
            ,co_instituicao_ensino
        FROM cesv.tb_candidatura
        WHERE st_candidatura = 'RASCUNHO'
        ORDER BY co_processo_seletivo DESC
        """,
        string_cesv[ambiente],
    )


def etapa_dados_pessoais(ambiente, uuid):
    geral_pessoa = executar_query(
        True,
        f"""
        select 1
        from geralpessoa.tb_filiacao_pessoa
        where co_geral_pessoa in (
            select co_seq_geral_pessoa
            from geralpessoa.tb_geral_pessoa tgp 
            where co_uuid_2 = '{uuid}'
        );
        """,
        string_geral_pessoa[ambiente],
    )

    if geral_pessoa:
        logging.info(f'Dados pessoais do candidato encontrados.')
        return True
    logging.info(f'Dados pessoais do candidato não encontrados.')
    return False


def etapa_endereco(ambiente, uuid):
    endereco = executar_query(
        True,
        f"""
        select 1
        from localizacao.tb_endereco
        where co_uuid_2 = '{uuid}';
        """,
        string_localizacao[ambiente],
    )

    if endereco:
        logging.info(f'Endereço do candidato encontrado.')
        return True
    logging.info(f'Endereço do candidato não encontrado.')
    return False


def etapa_contato(ambiente, uuid):
    contato = executar_query(
        True,
        f"""
        select 1
        from contato.tb_telefone
        where co_uuid_2 = '{uuid}' and fl_contato_emergencia;
        """,
        string_contato[ambiente],
    )

    if contato:
        logging.info(f'Contato do candidato encontrado.')
        return True
    logging.info(f'Contato do candidato não encontrado.')
    return False


def etapa_anexo(ambiente, uuid):
    anexo = executar_query(
        True,
        f"""
        select 1
        from fileserver.tb_anexo
        where co_uuid_2 = '{uuid}';
        """,
        string_fileserver[ambiente],
    )

    if anexo:
        logging.info(f'Anexos do candidato encontrados.\n')
        return True
    logging.info(f'Anexos do candidato não encontrados.\n')
    return False


def main(ambiente: str = 'prod'):

    logging.info(f'Buscando candidaturas rascunho em {ambiente}')
    candidaturas = candidaturas_rascunho(ambiente)
    logging.info(
        f'Candidaturas rascunho encontradas em {ambiente}: {len(candidaturas)}\n'
    )

    dados = []

    for candidatura in candidaturas:

        logging.info(f"Analisando dados do {candidatura['co_uuid_2']}")

        dado_candidatura = {
            'uuid': candidatura['co_uuid_2'],
            'etapa_dados_pessoais': etapa_dados_pessoais(
                ambiente, candidatura['co_uuid_2']
            ),
            'etapa_endereco': etapa_endereco(
                ambiente, candidatura['co_uuid_2']
            ),
            'etapa_contato': etapa_contato(ambiente, candidatura['co_uuid_2']),
        }

        if candidatura['co_instituicao_ensino'] is not None:
            etapa_instituicao_ensino = True
            logging.info(f'Instituicao de ensino do candidato encontrado.')
        else:
            etapa_instituicao_ensino = False
            logging.info(f'Instituicao de ensino do candidato não encontrado.')

        dado_candidatura['etapa_instituicao_ensino'] = etapa_instituicao_ensino
        dado_candidatura['etapa_anexo'] = etapa_anexo(
            ambiente, candidatura['co_uuid_2']
        )

        dados.append(dado_candidatura)

    logging.info(f'Exportando dados para SQL em {ambiente}')
    list_to_sql(
        dados,
        string_cesv[ambiente],
        'analise_candidatura_rascunho',
        schema='public',
    )

    logging.info(f'Processo finalizado em {ambiente}')


if __name__ == '__main__':
    from datetime import datetime

    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    tempo_execucao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {tempo_execucao}')
    logging.info('Processo finalizado\n')
