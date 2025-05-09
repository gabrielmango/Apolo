from datetime import datetime
from pathlib import Path

import requests

from database import executar_query
from utils.ambientes import string_institucional, url_sgp
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)

PROCESSED_FILE = 'sgp/processed_uuids_prod.txt'
URL = url_sgp.get('prod')

Path(PROCESSED_FILE).parent.mkdir(parents=True, exist_ok=True)


def retorna_uuid_institucional():
    """Retorna lista de UUIDs válidos para processamento"""
    lista = executar_query(
        True,
        """
        SELECT 
            a.co_uuid as uuid,
            v.no_inst_vinculo as vinculo,
            s.no_inst_situacao_funcional as situacao
        FROM institucional.tb_inst_pessoa a
        LEFT JOIN institucional.tb_inst_vinculo v 
            ON a.co_inst_vinculo = v.co_seq_inst_vinculo 
        LEFT JOIN institucional.tb_inst_situac_funcional s
            ON a.co_inst_situac_funcional = s.co_seq_inst_situac_funcional 
        WHERE 
            a.st_ativo AND v.st_ativo AND s.st_ativo AND
            s.co_seq_inst_situac_funcional NOT IN (18, 19, 21, 22, 23, 24, 29);
        """,
        string_institucional.get('prod'),
    )
    return [dado.get('uuid') for dado in lista]


def dividir_em_blocos(lista, tamanho_bloco=50):
    """Divide uma lista em blocos menores"""
    return [
        lista[i : i + tamanho_bloco]
        for i in range(0, len(lista), tamanho_bloco)
    ]


def carregar_uuids_processados():
    """Carrega UUIDs já processados de arquivo"""
    try:
        with open(PROCESSED_FILE, 'r') as f:
            return set(line.strip() for line in f)
    except FileNotFoundError:
        return set()


def salvar_uuids_processados(uuids):
    """Salva UUIDs processados com sucesso"""
    with open(PROCESSED_FILE, 'a') as f:
        for uuid in uuids:
            f.write(f'{uuid}\n')


def atualiza_produtividade(uuids):
    """Executa a requisição para atualizar produtividade"""
    data = {
        'dataInicio': '2025-04-05',
        'dataFim': '2025-05-08',
        'uuidUsuario': uuids,
    }

    logging.info(f'Iniciando processamento de {len(uuids)} UUIDs')

    try:
        response = requests.patch(URL, json=data, timeout=100)

        if response.status_code == 200:
            logging.info('Requisição bem-sucedida')
            logging.info(f'Resposta da API: {response.text}')
            return True

        logging.error(f'Falha na requisição. Status: {response.status_code}')
        logging.error(f'Resposta do servidor: {response.text}')
        return False

    except Exception as e:
        logging.error(f'Erro na requisição: {str(e)}')
        return False


def main():
    """Fluxo principal de execução"""
    logging.info('Iniciando processo de atualização')
    while True:
        uuids_processados = carregar_uuids_processados()
        logging.info(
            f'Total de UUIDs já processados: {len(uuids_processados)}'
        )

        todos_uuids = retorna_uuid_institucional()
        uuids_para_processar = [
            uuid for uuid in todos_uuids if uuid not in uuids_processados
        ]

        if not uuids_para_processar:
            logging.info('Nenhum UUID novo para processar')
            return

        logging.info(
            f'Total de UUIDs a processar: {len(uuids_para_processar)}'
        )

        blocos = dividir_em_blocos(uuids_para_processar)

        for i, bloco in enumerate(blocos, 1):
            logging.info(
                f'Processando bloco {i}/{len(blocos)} ({len(bloco)} UUIDs)'
            )

            if atualiza_produtividade(bloco):
                salvar_uuids_processados(bloco)
                logging.info(f'Bloco {i} salvo com sucesso')
            else:
                logging.warning(f'Bloco {i} falhou - Não será salvo')


if __name__ == '__main__':
    inicio = datetime.now()
    logging.info('Processo iniciado')

    try:
        main()
    except Exception as e:
        logging.error(f'Erro não tratado: {str(e)}', exc_info=True)
    finally:
        duracao = datetime.now() - inicio
        logging.info(f'Processo finalizado. Duração: {duracao}')
