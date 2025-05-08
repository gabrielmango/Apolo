from pprint import pprint

import pandas as pd
from sqlalchemy import create_engine, text

from utils.ambientes import string_mysql_portal


def migrar_para_preprod_new():
    mysql_origem = create_engine(string_mysql_portal.get('hml'))
    mysql_destino = create_engine(string_mysql_portal.get('preprod_new'))

    for tabela in [
        # 'wp_commentmeta',
        # 'wp_comments',
        # 'wp_links',
        'wp_posts',
        #'wp_options',
        #'wp_postmeta',
        # 'wp_slc_simple_login_captcha',
        # 'wp_term_relationships',
        # 'wp_term_taxonomy',
        # 'wp_termmeta',
        # 'wp_terms',
        # 'wp_usermeta',
        # 'wp_users'
    ]:
        print(f'Processando dados da tabela {tabela}:')
        df = pd.read_sql_table(tabela, con=mysql_origem)
        print(f'{tabela}: dados carregados!')

        df = df.iloc[:, 1:]
        try:
            df.to_sql(
                tabela, con=mysql_destino, if_exists='append', index=False
            )
        except Exception as e:
            print(e)
        print(f'Tabela {tabela} migrada!')


def main():
    migrar_para_preprod_new()


if __name__ == '__main__':
    main()
