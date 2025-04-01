import time
from datetime import datetime
from typing import Dict, List, Optional

from database import executar_query, list_to_sql
from utils.ambientes import string_cesv, string_contato
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


class CandidaturaProcessor:
    def __init__(self, ambiente: str = 'prod'):
        self.ambiente = ambiente
        self.cesv_connection = string_cesv[ambiente]
        self.contato_connection = string_contato[ambiente]

    def _execute_query(
        self, fetch: bool, query: str, connection: str
    ) -> Optional[List[Dict]]:
        """Generic method to execute queries"""
        return executar_query(fetch, query, connection)

    def get_candidaturas(self) -> List[Dict]:
        """Retrieve all candidaturas"""
        query = """
        SELECT
            DISTINCT
            co_uuid_2 AS uuid
        FROM
            cesv.tb_candidatura
        """
        return self._execute_query(True, query, self.cesv_connection) or []

    def get_email(self, uuid: str) -> List[Dict]:
        """Retrieve email for a specific UUID"""
        query = f"""
        SELECT
            co_seq_email as id,
            fl_email_principal as principal
        FROM
            contato.tb_email
        WHERE
            co_uuid_2 = '{uuid}' and
            st_ativo and fl_email_principal
        """
        return self._execute_query(True, query, self.contato_connection) or []

    def get_telefone(self, uuid: str) -> List[Dict]:
        """Retrieve phone for a specific UUID"""
        query = f"""
        SELECT
            co_seq_telefone as id,
            fl_telefone_principal as principal
        FROM
            contato.tb_telefone
        WHERE
            co_uuid_2 = '{uuid}' and
            st_ativo and fl_telefone_principal
        """
        return self._execute_query(True, query, self.contato_connection) or []

    def get_candidaturas_sem_telefone_principal(self) -> List[Dict]:
        """Retrieve candidaturas without main phone"""
        query = 'SELECT * FROM public.candidatura_sem_telefone_principal'
        return self._execute_query(True, query, self.cesv_connection) or []

    def update_telefone_principal(self, uuid: str) -> None:
        """Update the last phone entry to be the main phone"""
        query = f"""
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
        """
        self._execute_query(False, query, self.contato_connection)

    def find_candidaturas_sem_telefone(self) -> List[Dict]:
        """Find candidaturas without main phone and save to database"""
        logging.info(f'Iniciando processo em {self.ambiente.upper()}')

        candidaturas = self.get_candidaturas()
        logging.info(f'Candidaturas encontradas: {len(candidaturas)}')

        dados = []

        for candidatura in candidaturas:
            telefone = self.get_telefone(candidatura['uuid'])

            if not telefone:
                logging.info(
                    f'Falta telefone principal: {candidatura["uuid"]}'
                )
                dados.append({'uuid': candidatura['uuid']})

        logging.info(f'Exportando dados para SQL')
        if dados:
            list_to_sql(
                dados,
                self.cesv_connection,
                'candidatura_sem_telefone_principal',
                schema='public',
            )

        logging.info('Processo de identificação finalizado!\n')
        return dados

    def process_telefones_principais(self) -> None:
        """Process and update main phones for candidaturas"""
        logging.info(f'Atualizando telefone principal')

        candidaturas = self.get_candidaturas_sem_telefone_principal()
        logging.info(
            f'Candidaturas sem telefone principal: {len(candidaturas)}'
        )

        if candidaturas:
            logging.info('Atualizando telefones principais...')
            for candidatura in candidaturas:
                self.update_telefone_principal(candidatura['uuid'])
                logging.info(
                    f'Telefone principal atualizado para {candidatura["uuid"]}'
                )
        else:
            logging.info(
                'Nenhuma candidatura sem telefone principal encontrada.'
            )

        logging.info('Processo de atualização finalizado!\n')


def main_loop(ambiente: str = 'prod', interval: int = 600):
    """Main execution loop with interval"""
    logging.info('Processo iniciado')
    start_time = datetime.now()

    processor = CandidaturaProcessor(ambiente)

    try:
        while True:
            processor.find_candidaturas_sem_telefone()
            processor.process_telefones_principais()
            time.sleep(interval)
    except KeyboardInterrupt:
        end_time = datetime.now()
        tempo_execucao = str(end_time - start_time).split('.')[0]
        logging.info(f'Tempo de execução: {tempo_execucao}')
        logging.info('Processo finalizado pelo usuário\n')
    except Exception as e:
        logging.error(f'Erro durante a execução: {str(e)}')
        raise


if __name__ == '__main__':
    main_loop()
