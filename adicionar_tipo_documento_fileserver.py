from dotenv import dotenv_values
from sqlalchemy import create_engine

from database import executa_sql, executa_sql_com_resultados
from utils import carregar_de_json

config = dotenv_values('.env')

FILESERVER_POSTGRES_HML = config['FILESERVER_POSTGRES_HML']


def insert_tipo_documento(
    no_tipo_documento: str, sg_tipo_documento: str
) -> None:
    executa_sql(
        FILESERVER_POSTGRES_HML,
        f"""
            INSERT INTO fileserver.tb_tipo_documento(
            no_tipo_documento, sg_tipo_documento, nu_tamanho_documento, 
            st_ativo, dh_criacao, tp_operacao, nu_versao, co_uuid, co_uuid_1)
            SELECT '{no_tipo_documento}', '{sg_tipo_documento}', 20971520,
            true, now(), 'CREATE', 1, uuid_generate_v4(), '60a75feb-0170-4f38-a2cc-e31269440a61'
            WHERE NOT EXISTS (
                SELECT 1
                FROM fileserver.tb_tipo_documento
                WHERE no_tipo_documento = '{no_tipo_documento}'
                AND sg_tipo_documento = '{sg_tipo_documento}'
            );
        """,
    )

    return executa_sql_com_resultados(
        FILESERVER_POSTGRES_HML,
        f"""
        select co_seq_tipo_documento
        from fileserver.tb_tipo_documento 
        where no_tipo_documento = '{no_tipo_documento}' and 
        sg_tipo_documento = '{sg_tipo_documento}';
        """,
    )


def main():
    tipos_documentos = carregar_de_json(
        'data/tipo_documentos_fileserver_cesv.json'
    )

    for tipo in tipos_documentos:
        # tb_tipo_documento
        id_tipo_doc = insert_tipo_documento(tipo['nome'], tipo['sigla'])[0][0]


if __name__ == '__main__':
    from datetime import datetime

    print(f'Processo iniciado: {datetime.now()} \n')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    print(f'Processo finalizado: {datetime.now()} \n')

    full_time = end_time - start_time
    full_time = str(full_time).split('.')[0]
    print(f'Tempo de execução: {full_time}')
