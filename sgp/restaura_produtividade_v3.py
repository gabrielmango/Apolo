from datetime import datetime
from pathlib import Path
from typing import List, Set

import requests

from database import executar_query
from utils.ambientes import string_institucional, url_sgp
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)


class SGPUpdaterFacade:
    def __init__(self, environment: str = 'prod'):
        self.environment = environment
        self.config = self._load_config()
        self.file_manager = FileManager(self.config['processed_file'])
        self.db_manager = DatabaseManager(self.config['db_connection'])
        self.api_client = APIClient(
            self.config['api_url'],
            self.config['start_date'],
            self.config['end_date'],
        )

    def _load_config(self) -> dict:
        """Carrega todas as configurações necessárias"""
        return {
            'processed_file': 'sgp/processed_uuids_prod.txt',
            'db_connection': string_institucional.get(self.environment),
            'api_url': url_sgp.get(self.environment),
            'start_date': '2025-04-05',
            'end_date': '2025-05-08',
            'batch_size': 50,
        }

    def execute(self) -> None:
        """Executa o fluxo principal de atualização"""
        logging.info('Iniciando processo de atualização')

        processed_uuids = self.file_manager.load_processed()
        valid_uuids = self.db_manager.get_valid_uuids()

        pending_uuids = [
            uuid for uuid in valid_uuids if uuid not in processed_uuids
        ]

        if not pending_uuids:
            logging.info('Nenhum UUID novo para processar')
            return

        success_count = 0
        for batch in self._create_batches(
            pending_uuids, self.config['batch_size']
        ):
            if self.api_client.send_batch(batch):
                self.file_manager.save_batch(batch)
                success_count += 1

        logging.info(
            f'Processamento concluído. {success_count} batches enviados com sucesso.'
        )

    @staticmethod
    def _create_batches(data: List, batch_size: int) -> List[List]:
        """Divide os dados em batches menores"""
        return [
            data[i : i + batch_size] for i in range(0, len(data), batch_size)
        ]


class DatabaseManager:
    def __init__(self, connection_string: str):
        self.connection_string = connection_string

    def get_valid_uuids(self) -> List[str]:
        """Obtém UUIDs válidos do banco de dados"""
        query = """
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
        """
        result = executar_query(True, query, self.connection_string)
        return [row['uuid'] for row in result]


class FileManager:
    def __init__(self, file_path: str):
        self.file_path = Path(file_path)
        self._ensure_directory()

    def _ensure_directory(self) -> None:
        """Garante que o diretório do arquivo existe"""
        self.file_path.parent.mkdir(parents=True, exist_ok=True)

    def load_processed(self) -> Set[str]:
        """Carrega UUIDs já processados"""
        try:
            with self.file_path.open('r') as f:
                return {line.strip() for line in f}
        except FileNotFoundError:
            return set()

    def save_batch(self, uuids: List[str]) -> None:
        """Salva um batch de UUIDs processados"""
        with self.file_path.open('a') as f:
            f.write('\n'.join(uuids) + '\n')


class APIClient:
    def __init__(self, base_url: str, start_date: str, end_date: str):
        self.base_url = base_url
        self.start_date = start_date
        self.end_date = end_date

    def send_batch(self, uuids: List[str]) -> bool:
        """Envia um batch de UUIDs para a API"""
        payload = {
            'dataInicio': self.start_date,
            'dataFim': self.end_date,
            'uuidUsuario': uuids,
        }

        try:
            response = requests.patch(self.base_url, json=payload, timeout=100)
            return self._handle_response(response, uuids)
        except Exception as e:
            logging.error(f'Erro na requisição: {str(e)}')
            return False

    def _handle_response(
        self, response: requests.Response, uuids: List[str]
    ) -> bool:
        """Processa a resposta da API"""
        if response.status_code == 200:
            logging.info(f'Batch de {len(uuids)} UUIDs processado com sucesso')
            return True

        logging.error(
            f'Falha no batch. Status: {response.status_code} - Resposta: {response.text}'
        )
        return False


if __name__ == '__main__':
    start_time = datetime.now()
    logging.info('Processo iniciado')

    try:
        updater = SGPUpdaterFacade()
        updater.execute()
    except Exception as e:
        logging.error(f'Erro não tratado: {str(e)}', exc_info=True)
    finally:
        duration = datetime.now() - start_time
        logging.info(f'Processo finalizado. Duração: {duration}')
