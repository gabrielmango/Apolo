import pandas as pd

from database import executar_query
from utils.ambientes import string_institucional, string_scsdp


def retorna_uuid_institucional(ambiente):
    return pd.DataFrame(
        executar_query(
            True,
            """
            SELECT p.no_inst_pessoa,
                v.no_inst_vinculo,
                s.no_inst_situacao_funcional,
                p.co_uuid
            FROM institucional.tb_inst_pessoa p
                LEFT JOIN institucional.tb_inst_vinculo v 
                    ON p.co_inst_vinculo = v.co_seq_inst_vinculo
                LEFT JOIN institucional.tb_inst_situac_funcional s 
                    ON p.co_inst_situac_funcional = s.co_seq_inst_situac_funcional
            WHERE 
                p.st_ativo = true AND 
                v.st_ativo = true AND 
                s.st_ativo = true and 
                s.co_seq_inst_situac_funcional in (18, 19, 21, 22, 23, 24, 29);
        """,
            string_institucional.get(ambiente),
        )
    )


def retorna_usuario_interno_perfil(ambiente):
    return pd.DataFrame(
        executar_query(
            True,
            """
        SELECT a.ds_situacao_usuario_interno,
            b.co_perfil,
            a.co_uuid,
            a.nu_cpf_usuario_interno
        FROM scsdp.tb_usuario_interno a
            JOIN scsdp.tb_usuario_interno_perfil b 
                ON a.co_seq_usuario_interno = b.co_usuario_interno
        where b.co_perfil = 7;
        """,
            string_scsdp.get(ambiente),
        )
    )


def main(ambiente: str = 'preprod'):
    ex_funcionarios = retorna_uuid_institucional(ambiente)
    info_usuario_interno = retorna_usuario_interno_perfil(ambiente)

    df_merged = pd.merge(
        ex_funcionarios,
        info_usuario_interno,
        left_on='co_uuid',
        right_on='co_uuid',
        how='inner',
    )

    df_merged.to_sql(
        'ex_funcionarios_sti_administrativo',
        con=string_scsdp.get(ambiente),
        schema='public',
        index=False,
        if_exists='replace',
    )


if __name__ == '__main__':
    main()
