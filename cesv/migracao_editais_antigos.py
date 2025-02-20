from pprint import pprint

import pandas as pd

from database import executar_query
from utils.ambientes import string_cesv, string_fileserver
from utils.setup_logging import logging, setup_logging

setup_logging(__file__)

query = """
select 
	a.ds_titulo_processo_seletivo, 
	a.co_uuid,
	c.nome_arquivo,
	c.tipo_documento,
	c.titulo,
	c.dt_inclusao,
	c.uuid_arquivo 
from cesv.tb_processo_seletivo a
left join dbportalestagio.tb_estagio b
	on a.ds_titulo_processo_seletivo = b.titulo 
left join dbportalestagio.tb_anexo c
	on b.pk_estagio = c.fk_estagio
where c.uuid_arquivo is not null and a.nu_ano_processo_seletivo = '2025'
order by a.ds_titulo_processo_seletivo 
"""


def retorna_id_tipo_documento(ambiente, text):
    query = f""" 
SELECT co_seq_tipo_documento
FROM fileserver.tb_tipo_documento
WHERE UPPER(unaccent(TRIM(no_tipo_documento))) = 
UPPER(unaccent(TRIM('{text.replace('_', ' ')}')))
order by co_seq_tipo_documento desc 
limit 1
"""
    id = executar_query(True, query, string_fileserver[ambiente])

    if id:
        return id[0]['co_seq_tipo_documento']
    return None


def insert_tipo_documento(ambiente, nome, sigla):
    query = f"""
INSERT INTO fileserver.tb_tipo_documento(
    no_tipo_documento, sg_tipo_documento, nu_tamanho_documento, 
    fl_habilita_campo_texto_1, ds_tipo_documento,
    st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1
)
SELECT 
    '{nome}', '{sigla}', 20971520, TRUE,
    '{nome} - Editais antigos',
    TRUE, now(), 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
WHERE NOT EXISTS (
    SELECT 1
    FROM fileserver.tb_tipo_documento
    WHERE no_tipo_documento = '{nome}'
    AND sg_tipo_documento = '{sigla}'
);
"""
    executar_query(False, query, string_fileserver[ambiente])


def insert_anexo(
    ambiente,
    co_uuid_2,
    co_tipo_documento,
    no_documento,
    co_uuid_anexo_mongo,
    dt_1,
):
    query = f"""
INSERT INTO fileserver.tb_anexo
(co_uuid_2, co_tipo_documento, co_uuid_anexo_mongo, no_documento, dt_1, no_texto_1,
st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
select 
	'{co_uuid_2}', {co_tipo_documento}, '{co_uuid_anexo_mongo}', '{no_documento}', '{dt_1}', '{no_documento}',
	TRUE, now(), 'CREATE', 1, uuid_generate_v4(), 'anexos dos editais antigos da cesv'
WHERE NOT EXISTS (
    SELECT 1
    FROM fileserver.tb_anexo
    WHERE co_uuid_2 = '{co_uuid_2}'
    AND co_tipo_documento = {co_tipo_documento}
    AND co_uuid_anexo_mongo = '{co_uuid_anexo_mongo}'
    AND no_documento = '{no_documento}'
);
"""
    executar_query(False, query, string_fileserver[ambiente])


def main(ambiente: str = 'prod'):
    dados = executar_query(True, query, string_cesv[ambiente])

    tipos_documentos = [
        dado['tipo_documento'].capitalize().replace('_', ' ') for dado in dados
    ]

    for tipo in list(set(tipos_documentos)):
        insert_tipo_documento(
            ambiente,
            tipo,
            str(tipo[: len(tipo) // 2].upper() + 'CESV').replace(' ', ''),
        )
    contador = 0
    for dado in dados:
        contador += 1
        print(f'Contador: {contador}/{len(dados)}')
        print(f'Processando: {dado["ds_titulo_processo_seletivo"]}')

        insert_anexo(
            ambiente,
            dado['co_uuid'],
            retorna_id_tipo_documento(ambiente, dado['tipo_documento']),
            dado['titulo'],
            dado['uuid_arquivo'],
            dado['dt_inclusao'],
        )
        print(f'Anexado: {dado["ds_titulo_processo_seletivo"]}\n')


if __name__ == '__main__':
    from datetime import datetime

    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    logging.info(
        f'Tempo de execução: {str(end_time - start_time).split(".")[0]}'
    )
    logging.info('Processo finalizado')
