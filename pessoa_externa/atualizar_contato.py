from database import executar_query
from utils.ambientes import string_contato, string_pessoa_externa
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def valida_coluna_contato_externa(ambiente):
    query = f"""
        SELECT column_name
        FROM information_schema.columns
        WHERE table_schema = 'contato' and table_name = 'tb_email'
        AND column_name = 'fl_principal_pessoa_externa';
    """

    result = executar_query(True, query, string_contato[ambiente])

    if result:
        return True
    return False


def retorna_pessoas_externas(ambiente):
    query = """
        SELECT co_uuid 
        FROM usuarioexterno.tb_pessoa_externa tpe 
        WHERE st_ativo;
    """
    dados = executar_query(True, query, string_pessoa_externa[ambiente])

    dados = [dado['co_uuid'] for dado in dados]

    logging.info(f'Retorna todas as pessoas externas: {len(dados)}')

    return dados


def atualizar_pessoa_externa(ambiente, uuid):
    query = f"""
        UPDATE contato.tb_email
        SET fl_principal_pessoa_externa = true,
        dh_alteracao = now(), tp_operacao = 'UPDATE', nu_versao = nu_versao + 1,
        co_uuid_1 = 'atualizar_email_principal_pessoa_externa', 
        sg_projeto_modificador = 'AUTOMAÇÃO',
        sg_acao_modificadora = 'ATUALIZAÇÃO',
        no_end_point_modificador = 'ATUALIZAÇÃO'
        WHERE st_ativo AND co_uuid_2 = '{uuid}';
    """
    executar_query(False, query, string_contato[ambiente])
    logging.info(f'Pessoa externa {uuid} atualizada.')


def main(ambiente: str = 'dev'):

    if valida_coluna_contato_externa(ambiente):
        dados_pessoa_externa = retorna_pessoas_externas(ambiente)

        for uuid in dados_pessoa_externa:
            atualizar_pessoa_externa(ambiente, uuid)
    else:
        logging.error(
            f'tb_emails sem fl_principal_pessoa_externa: {ambiente.upper()}'
        )


if __name__ == '__main__':
    from datetime import datetime

    logging.info('Processo iniciado')
    start_time = datetime.now()

    for ambiente in ['prod']:
        print(ambiente)
        main(ambiente)

    end_time = datetime.now()
    logging.info(
        f'Tempo de execução: {str(end_time - start_time).split(".")[0]}'
    )
    logging.info('Processo finalizado')
