from database import executar_query, list_to_sql
from utils.ambientes import string_cesv, string_contato
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def retorna_candidaturas(ambiente):
    return executar_query(
        True,
        """
        SELECT
            co_uuid_2 AS uuid,
            st_candidatura as status
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
        logging.info(f'UUID: {candidatura["uuid"]}')

        telefone = retorna_telefone(ambiente, candidatura['uuid'])

        if not telefone:
            logging.info(
                f'Telefone principal não encontrado para {candidatura["uuid"]}'
            )

            dado.append(
                {
                    'uuid': candidatura['uuid'],
                    'status': candidatura['status'],
                }
            )

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


if __name__ == '__main__':
    from datetime import datetime

    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()
    atualiza_telefone_principal()

    end_time = datetime.now()
    tempo_execucao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {tempo_execucao}')
    logging.info('Processo finalizado\n')
