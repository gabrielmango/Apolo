from datetime import datetime
from pathlib import Path

from pymongo import MongoClient

from database import executar_query, list_to_sql
from utils.ambientes import string_base, string_procapi, string_solar
from utils.gerenciar_json import salvar_avisos_em_json
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)

varas = [
    '3ª Vara Cível da Comarca de Belo Horizonte',
    '1ª Vara Criminal e da Infância e da Juventude da Comarca de Manhuaçu',
]


class LimparAvisos:
    def __init__(self, ambiente):
        self._ambiente = ambiente
        self.client = MongoClient(string_procapi[self._ambiente])
        self.db = self.client['dbprocapi']

    def retorna_avisos(self):
        collection = self.db.aviso

        return [
            {
                'numero_aviso': aviso.get('numero'),
                'vara': aviso.get('processo')
                .get('orgaoJulgador')
                .get('nomeOrgao'),
            }
            for aviso in collection.find(
                {'processo.orgaoJulgador.nomeOrgao': self.vara}
            )
        ]

    def lista_avisos_excecao(self):
        path_file = Path('solar') / 'procapi' / 'data' / f'{self.vara}.txt'
        try:
            with open(path_file, 'r', encoding='utf-8') as arquivo:
                self.avisos_execao = arquivo.read().split('\n')
        except Exception as e:
            logging.error(f'Erro ao carregar {path_file}: {e}')
            self.avisos_execao = []

    def limpa_avisos_por_vara(self, vara: str):
        self.vara = vara
        self.lista_avisos_excecao()
        avisos = self.retorna_avisos()
        logging.info(f'Quantidade de avisos: {len(avisos)}')
        print(self.avisos_execao)
        for aviso in self.retorna_avisos():
            ...


def main(ambiente: str = 'prod'):

    limpa_aviso = LimparAvisos(ambiente)
    for vara in varas:
        logging.info(f'VARA: {vara}')
        limpa_aviso.limpa_avisos_por_vara(vara)


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
