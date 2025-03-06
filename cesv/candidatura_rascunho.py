from pprint import pprint

from database import executar_query
from utils.ambientes import string_cesv
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


def main(ambiente: str = 'prod'):

    logging.info(f'Buscando candidaturas rascunho em {ambiente}')
    candidaturas = candidaturas_rascunho(ambiente)
    logging.info(
        f'Candidaturas rascunho encontradas em {ambiente}: {len(candidaturas)}'
    )

    for candidatura in candidaturas:
        pprint(candidatura)


if __name__ == '__main__':
    from datetime import datetime

    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    tempo_execucao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {tempo_execucao}')
    logging.info('Processo finalizado\n')
