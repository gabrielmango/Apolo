import pandas as pd

from database import executar_query
from utils.ambientes import string_institucional, string_scsdp


def retorna_uuid_institucional():
    return pd.DataFrame(executar_query(
        True,
        """
            SELECT 
                a.co_uuid,
                a.no_inst_pessoa,
                v.no_inst_vinculo as vinculo,
                s.no_inst_situacao_funcional as situacao
            FROM institucional.tb_inst_pessoa a
            left join institucional.tb_inst_vinculo v 
                on a.co_inst_vinculo = v.co_seq_inst_vinculo 
            left join institucional.tb_inst_situac_funcional s
                on a.co_inst_situac_funcional = s.co_seq_inst_situac_funcional 
            WHERE 
                a.st_ativo and v.st_ativo and s.st_ativo and
                s.co_seq_inst_situac_funcional in (18, 19, 21, 22, 23, 24, 29);
        """,
        string_institucional.get('prod'),
    ))

def retorna_usuario_interno_scspd():
    return pd.DataFrame(executar_query(
        True,
        """
            select 
                a.co_uuid,
                a.ds_situacao_usuario_interno 
            from scsdp.tb_usuario_interno a
            where st_ativo;
        """,
        string_scsdp.get('prod'),
    ))

def bloquear_usuario_interno(uuid):
    return pd.DataFrame(executar_query(
        False,
        f"""
            UPDATE scsdp.tb_usuario_interno
            SET ds_situacao_usuario_interno = 'BLOQUEADO'
            WHERE co_uuid = '{uuid}';
        """,
        string_scsdp.get('prod'),
    ))


def main():
    ex_funcionarios = retorna_uuid_institucional()
    info_usuario_interno = retorna_usuario_interno_scspd()

    df_merged = pd.merge(
        ex_funcionarios,
        info_usuario_interno,
        left_on='co_uuid',
        right_on='co_uuid',
        how='left'
    )

    df_merged.to_sql(
        'ex_funcionarios',
        con=string_scsdp.get('prod'),
        schema='public',
        index=False,
        if_exists='replace'
    )

    for index, row in df_merged.iterrows():
        if row['ds_situacao_usuario_interno'] != 'BLOQUEADO':
            bloquear_usuario_interno(row['co_uuid'])
            print(f'{row['co_uuid']} bloqueado!')




if __name__ == '__main__':
    main()
