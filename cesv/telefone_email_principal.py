from database import executar_query
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


def main(ambiente: str = 'prod'):
    logging.info(f'Iniciando processo para {ambiente}')
    candidaturas = retorna_candidaturas(ambiente)
    logging.info(
        f'Candidaturas encontradas em {ambiente}: {len(candidaturas)}'
    )

    for candidatura in candidaturas:
        logging.info(f'UUID: {candidatura["uuid"]}')

        email = retorna_email(ambiente, candidatura['uuid'])

        if not email:
            logging.info(
                f'Email principal não encontrado para {candidatura["uuid"]}'
            )


if __name__ == '__main__':
    from datetime import datetime

    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    tempo_execucao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {tempo_execucao}')
    logging.info('Processo finalizado\n')
