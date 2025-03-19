from utils.ambientes import string_solar
from database import executar_query
from utils.setup_logging import setup_logging, logging

setup_logging(__file__)

def get_defensorias(ambiente):
    logging.info('Buscando defensorias...')
    return executar_query(
        True,
        f"""
            SELECT id
            FROM public.contrib_defensoria;
        """,
        string_solar[ambiente]
    )

def get_eventos(ambiente):
    logging.info('Buscando tipos de eventos...')
    return executar_query(
        True,
        f"""
            SELECT id
            FROM public.core_tipoevento;
        """,
        string_solar[ambiente]
    )

def insert_defensoria_evento(ambiente, defensoria, evento):
    logging.info(f'Inserindo relacionamento defensoria {defensoria["id"]} com evento {evento["id"]}...')
    executar_query(
        False,
        f"""
            INSERT INTO public.contrib_defensoria_tipos_eventos(
                conta_estatistica, defensoria_id, tipo_evento_id
            )
            SELECT 
                TRUE, {defensoria['id']}, {evento['id']}
            WHERE NOT EXISTS (
                SELECT 1
                FROM public.contrib_defensoria_tipos_eventos
                WHERE conta_estatistica = TRUE
                AND defensoria_id = {defensoria['id']}
                AND tipo_evento_id = {evento['id']}
            );
        """,
        string_solar[ambiente]
    )

def main(ambiente: str = 'prod'):
    defensorias = get_defensorias(ambiente)
    eventos = get_eventos(ambiente)

    logging.info('Iniciando relacionamento entre defensorias e eventos...')
    for defensoria in defensorias:
        for evento in eventos:
            insert_defensoria_evento(ambiente, defensoria, evento)
    
    logging.info('Relacionamento entre defensorias e eventos finalizado.')


if __name__ == '__main__':
    from datetime import datetime

    logging.info('Processo iniciado')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    duracao = str(end_time - start_time).split('.')[0]
    logging.info(f'Tempo de execução: {duracao}')
    logging.info('Processo finalizado\n\n')