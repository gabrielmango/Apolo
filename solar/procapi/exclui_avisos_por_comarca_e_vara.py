from datetime import datetime

import pandas as pd
from pymongo import MongoClient

from database import executar_query
from utils.ambientes import string_base, string_procapi, string_solar
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)

VARA = 'Cível'
COMARCA = 'Belo Horizonte'

INICIO_PERIODO = '2025-03-20'
FIM_PERIODO = '2025-03-29'

DEFENSORIAS = [
    '1ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '2ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '3ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '4ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '5ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '6ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '7ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '8ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '9ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '10ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '11ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '12ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '13ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '14ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '15ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '16ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '17ª DEFENSORIA CÍVEL',
    '18ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '19ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '20ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '21ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '22ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '23ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '24ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '25ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '26ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '27ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '28ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '29ª DEFENSORIA CIVEL DE BELO HORIZONTE - A',
    '30ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '31ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '32ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '33ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '34ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '35ª DEFENSORIA CÍVEL DE BELO HORIZONTE',
    '36ª DEFENSORIA CIVEL DE BELO HORIZONTE',
    '37ª DEFENSORIA CIVEL DE BELO HORIZONTE - A',
    '37ª DEFENSORIA CIVEL DE BELO HORIZONTE - B',
    '37ª DEFENSORIA CIVEL DE BELO HORIZONTE - C',
    '37ª DEFENSORIA CIVEL DE BELO HORIZONTE - D',
    '37ª DEFENSORIA CIVEL DE BELO HORIZONTE - E',
    '38ª DEFENSORIA CIVEL DE BELO HORIZONTE - A',
    '38ª DEFENSORIA CIVEL DE BELO HORIZONTE - B',
    '38ª DEFENSORIA CIVEL DE BELO HORIZONTE - C',
    '38ª DEFENSORIA CIVEL DE BELO HORIZONTE - D',
    '38ª DEFENSORIA CIVEL DE BELO HORIZONTE - E',
    '38ª DEFENSORIA CIVEL DE BELO HORIZONTE - F',
]


class SolarService:
    def __init__(self, comarca: str, vara: str, ambiente: str = 'prod'):
        logging.info('Inicializando Serviço Solar...')
        self._ambiente = ambiente
        self._comarca = comarca
        self._vara = vara
        self.avisos = self._get_avisos()
        self.processos = self._get_processos()
        self.processos_com_avisos = self._get_processos_com_avisos()
        self.processos_com_avisos_filtrados = (
            self._get_processos_com_avisos_por_comarca_e_vara()
        )

    def _get_avisos(self):
        logging.info('Buscando avisos...')

        try:
            client = MongoClient(string_procapi.get(self._ambiente))
            db = client['dbprocapi']
            collection = db.aviso

            avisos = [
                {
                    'numero_aviso': processo.get('numero'),
                    'numero_processo': processo.get('processo').get('numero'),
                    'vara': processo.get('processo')
                    .get('orgaoJulgador')
                    .get('nomeOrgao'),
                    'modificado_em': processo.get('modificado_em'),
                    'situacao': processo.get('situacao'),
                }
                for processo in collection.find()
            ]

            logging.info('Avisos buscados com sucesso.')
            logging.info(f'Avisos encontrado: {len(avisos)}')
            return pd.DataFrame(avisos)

        except Exception as e:
            logging.error(f'Erro ao buscar avisos: {e}')
            return pd.DataFrame()
        finally:
            client.close()

    def _get_processos(self):
        logging.info('Buscando processos...')
        processos = executar_query(
            True,
            f"""
                SELECT 
                    pp.numero_puro as numero_processo,
                    cc.nome as comarca,
                    cd.nome as defensoria
                FROM processo_processo pp
                left join processo_parte pp2 on pp2.processo_id = pp.id
                left join contrib_defensoria cd on pp2.defensoria_id = cd.id
                left join contrib_comarca cc on pp.comarca_id = cc.id 
                left join contrib_vara cv on pp.vara_id = cv.id 
                order by pp.id desc;
            """,
            string_solar.get(self._ambiente),
        )

        logging.info('Processos buscados com sucesso.')
        logging.info(f'Processos encontrados: {len(processos)}')
        return pd.DataFrame(processos)

    def _get_processos_com_avisos(self):
        logging.info('Buscando processos com avisos...')

        processos_com_avisos = self.avisos.merge(
            self.processos,
            left_on='numero_processo',
            right_on='numero_processo',
            how='left',
        ).drop_duplicates(subset=['numero_aviso'], keep='last')

        logging.info('Processos com avisos buscados com sucesso.')
        logging.info(
            f'Processos com avisos encontrados: {len(processos_com_avisos)}'
        )

        return processos_com_avisos

    def _get_processos_com_avisos_por_comarca_e_vara(self):
        logging.info(
            f'Filtrando processos com avisos pela comarca {self._comarca} e pela vara {self._vara}'
        )

        processos_filtrados = self.processos_com_avisos[
            (
                self.processos_com_avisos['vara'].str.contains(
                    self._comarca, case=False, na=False
                )
            )
            & (
                self.processos_com_avisos['vara'].str.contains(
                    self._vara, case=False, na=False
                )
            )
        ]

        logging.info(
            f'Processos com avisos filtrados: {len(processos_filtrados)}'
        )

        return processos_filtrados

    def limpar_avisos_comarca_vara(self):
        logging.info('Iniciando limpeza dos processos com avisos...')

        inicio_periodo = pd.Timestamp(INICIO_PERIODO)
        fim_periodo = pd.Timestamp(FIM_PERIODO)

        for _, row in self.processos_com_avisos_filtrados.iterrows():
            numero_aviso = row['numero_aviso']
            numero_processo = row['numero_processo']

            if row['defensoria'] not in DEFENSORIAS:
                logging.info(f'Processo {numero_processo}:')
                logging.info(
                    f'Aviso {numero_aviso}: fora da lista de defensorias. Removendo...'
                )
                self._remover_aviso(numero_aviso)
                logging.info(
                    f'------------------------------------------------------------------'
                )
                continue

            data_modificado = pd.to_datetime(row['modificado_em'])
            if (
                inicio_periodo <= data_modificado <= fim_periodo
                and row['situacao'] != 30
            ):
                logging.info(f'Processo {numero_processo}:')
                logging.info(
                    f'>>> Aviso {numero_aviso}: dentro da lista de defensorias!'
                )
                logging.info(
                    f'Aviso {numero_aviso}: dentro do período válido e situação diferente de fechado. Removendo...'
                )
                self._remover_aviso(numero_aviso)
                logging.info(
                    f'------------------------------------------------------------------'
                )
            else:
                logging.info(f'Processo {numero_processo}:')
                logging.info(
                    f'>>> Aviso {numero_aviso}: dentro da lista de defensorias!'
                )
                logging.info(
                    f'Aviso {numero_aviso}: fora do período. Removendo...'
                )
                self._remover_aviso(numero_aviso)
                logging.info(
                    f'------------------------------------------------------------------'
                )

    def _remover_aviso(self, numero_aviso):
        print(f'Removendo aviso: {numero_aviso}')


def main():

    solar_service = SolarService(COMARCA, VARA)

    solar_service.limpar_avisos_comarca_vara()


if __name__ == '__main__':
    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')
