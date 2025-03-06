from pprint import pprint

from database import executar_query
from utils.ambientes import (string_cesv, string_contato, string_geral_pessoa,
                             string_localizacao)
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


def candidaturas_rascunho(ambiente):
    return executar_query(
        True,
        """
        SELECT 
            co_processo_seletivo
            ,co_uuid_2
            ,dt_conclusao_curso
            ,no_periodo_atual_curso
            ,ds_carga_horaria_cursada
            ,nu_media_nota_global_curso
            ,fl_estagiou_dpmg
            ,dt_inicio_contrato
            ,dt_fim_contrato
            ,fl_portador_deficiencia_fisica
            ,ds_deficiencia
            ,nu_inscricao_processo_seletivo
            ,st_candidatura
            ,fl_autodeclaracao_concorr_cota
            ,co_instituicao_ensino
            ,st_atual_candidato
            ,ds_concorrencia_cota
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
        logging.info(f'Dados pessoais do candidato {uuid} encontrados.')
        return True
    logging.info(f'Dados pessoais do candidato {uuid} não encontrados.')
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
        logging.info(f'Endereço do candidato {uuid} encontrado.')
        return True
    logging.info(f'Endereço do candidato {uuid} não encontrado.')
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
        logging.info(f'Contato do candidato {uuid} encontrado.')
        return True
    logging.info(f'Contato do candidato {uuid} não encontrado.')
    return False


def main(ambiente: str = 'prod'):

    logging.info(f'Buscando candidaturas rascunho em {ambiente}')
    candidaturas = candidaturas_rascunho(ambiente)
    logging.info(
        f'Candidaturas rascunho encontradas em {ambiente}: {len(candidaturas)}'
    )

    dados = []

    for candidatura in candidaturas:

        dado_candidatura = {
            'uuid': candidatura['co_uuid_2'],
            'dados_pessoais': etapa_dados_pessoais(
                ambiente, candidatura['co_uuid_2']
            ),
            'endereco': etapa_endereco(ambiente, candidatura['co_uuid_2']),
            'contato': etapa_contato(ambiente, candidatura['co_uuid_2']),
        }

        if candidatura['co_instituicao_ensino'] is not None:
            etapa_instituicao_ensino = True
        else:
            etapa_instituicao_ensino = False

        dado_candidatura['instituicao_ensino'] = etapa_instituicao_ensino


if __name__ == '__main__':
    from datetime import datetime

    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    tempo_execucao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {tempo_execucao}')
    logging.info('Processo finalizado\n')
