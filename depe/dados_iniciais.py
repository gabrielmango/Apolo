from database import consulta_para_lista
from utils.ambientes import string_depe

SCHEMA_DEPE = 'depe_bkp_inicial'


def retorna_dados_tb_campo(ambiente: str):
    query = f"""
        select
            co_seq_campo
            ,no_campo
            ,tp_campo
            ,ds_campo
            ,qt_caracteres_codigo
            ,nu_ordem_codigo
            ,tp_valor_campo
            ,co_uuid
            ,fl_campo_obrigatorio
            ,fl_destacar_campo_front_end
            ,ds_intervencao_externa
        from 
            depe_bkp_inicial.tb_campo tc
        WHERE 
            st_ativo = TRUE
        ORDER BY 
            co_seq_campo ASC;
    """
    return consulta_para_lista(ambiente, query)


def main():
    dados_tb_campo = retorna_dados_tb_campo(string_depe['dev'])

    for campo in dados_tb_campo:
        for chave, valor in campo.items():
            print(f'{chave}: {valor}')
        print('-----------------------------------------')


if __name__ == '__main__':
    from datetime import datetime

    print(f'\nProcesso iniciado: {datetime.now()} \n')
    start_time = datetime.now()

    main()

    end_time = datetime.now()
    print(f'\nProcesso finalizado: {datetime.now()} \n')

    full_time = end_time - start_time
    full_time = str(full_time).split('.')[0]
    print(f'Tempo de execução: {full_time}')
