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


def main(ambiente: str = 'preprod'):
    dados = retorna_processos_seletivos(ambiente)

    for dado in dados:
        print(dado)


if __name__ == '__main__':
    from datetime import datetime

    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado')
