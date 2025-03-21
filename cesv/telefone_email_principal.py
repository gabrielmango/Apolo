from database import executar_query, list_to_sql
from utils.ambientes import string_cesv, string_contato
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def retorna_candidaturas(ambiente):
    return executar_query(
        True,
        """
        SELECT
            DISTINCT
            co_uuid_2 AS uuid
        FROM
            cesv.tb_candidatura
        WHERE st_candidatura <> 'RASCUNHO'
        """,
        string_cesv[ambiente],
    )


def retorna_email(ambiente, uuid):
    return executar_query(
        True,
        f"""
        SELECT
            co_seq_email as id,
            fl_email_principal as principal
        FROM
            contato.tb_email
        WHERE
            co_uuid_2 = '{uuid}' and
            st_ativo and fl_email_principal
        """,
        string_contato[ambiente],
    )


def retorna_telefone(ambiente, uuid):
    return executar_query(
        True,
        f"""
        SELECT
            co_seq_telefone as id,
            fl_telefone_principal as principal
        FROM
            contato.tb_telefone
        WHERE
            co_uuid_2 = '{uuid}' and
            st_ativo and fl_telefone_principal
        """,
        string_contato[ambiente],
    )


def retorna_candidatura_sem_telefone_principal(ambiente):
    return executar_query(
        True,
        f"""
        SELECT *
        FROM
            public.candidatura_sem_telefone_principal
        """,
        string_cesv[ambiente],
    )


def atualiza_telefone_para_principal(ambiente, uuid):
    executar_query(
        False,
        f"""
        WITH ultima_entrada AS (
            SELECT co_seq_telefone
            FROM contato.tb_telefone
            WHERE st_ativo
            AND fl_contato_emergencia = false
            AND co_uuid_2 = '{uuid}'
            ORDER BY co_seq_telefone DESC
            LIMIT 1
        )
        UPDATE contato.tb_telefone
        SET fl_telefone_principal = true
        WHERE co_seq_telefone IN (SELECT co_seq_telefone FROM ultima_entrada);
        """,
        string_contato[ambiente],
    )


def main(ambiente: str = 'prod'):
    logging.info(
        f'Iniciando processo de analise no ambiente de {ambiente.upper()}'
    )
    candidaturas = retorna_candidaturas(ambiente)
    logging.info(
        f'Candidaturas encontradas em {ambiente}: {len(candidaturas)}'
    )

    dado = []

    for candidatura in candidaturas:
        # logging.info(f'UUID: {candidatura["uuid"]}')

        telefone = retorna_telefone(ambiente, candidatura['uuid'])

        if not telefone:
            logging.info(
                f'Telefone principal não encontrado para {candidatura["uuid"]}'
            )

            dado.append({'uuid': candidatura['uuid']})

    logging.info(f'Exportando dados para SQL em {ambiente}')
    list_to_sql(
        dado,
        string_cesv[ambiente],
        'candidatura_sem_telefone_principal',
        schema='public',
    )

    logging.info(f'Processo finalizado!\n')


def atualiza_telefone_principal(ambiente: str = 'prod'):
    logging.info(f'Atualizando telefone principal em {ambiente}')

    candidaturas_sem_telefone_principal = (
        retorna_candidatura_sem_telefone_principal(ambiente)
    )
    logging.info(
        f'Candidaturas sem telefone principal em {ambiente}: {len(candidaturas_sem_telefone_principal)}'
    )

    if candidaturas_sem_telefone_principal:
        logging.info('Atualizando telefone principal...')

        for candidatura in candidaturas_sem_telefone_principal:
            atualiza_telefone_para_principal(ambiente, candidatura['uuid'])
            logging.info(
                f'Telefone principal atualizado para {candidatura["uuid"]}'
            )
    else:
        logging.info('Nenhuma candidatura sem telefone principal encontrada.')

    logging.info(f'Processo finalizado!\n')


if __name__ == '__main__':
    import time
    from datetime import datetime

    logging.info('Processo iniciado')
    start_time = datetime.now()

    while True:
        main()
        atualiza_telefone_principal()
        time.sleep(600)

    end_time = datetime.now()
    tempo_execucao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {tempo_execucao}')
    logging.info('Processo finalizado\n')
