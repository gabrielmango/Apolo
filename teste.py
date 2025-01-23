from sqlalchemy import create_engine, text

def execute_sql_file(file_path, connection_string):
    """
    Lê um arquivo .sql e executa as consultas no banco de dados.

    :param file_path: Caminho para o arquivo .sql.
    :param connection_string: String de conexão para o banco de dados.
    """
    try:
        # Conectando ao banco de dados
        engine = create_engine(connection_string)
        with engine.connect() as connection:
            
            # Lendo o arquivo SQL
            with open(file_path, 'r', encoding='utf-8') as sql_file:
                sql_commands = sql_file.read()

            # Dividindo comandos SQL por ponto-e-vírgula para executar um por um
            for command in sql_commands.split(';'):
                if command.strip():  # Ignora comandos vazios
                    connection.execute(text(command))
                    print(f"Comando executado: {command.strip()[:50]}...")

            print("Todos os comandos SQL foram executados com sucesso.")
    except Exception as e:
        print(f"Erro ao executar o arquivo SQL: {e}")

if __name__ == "__main__":
    # Substitua pelo caminho do arquivo .sql
    sql_file_path = "DADOS_INICIAIS_DEPE.sql"
    
    # Substitua pela sua string de conexão
    db_connection_string = "postgresql+psycopg2://gabriel_mango:k0CA5O1KfQ5eyrEm6nJR@10.230.20.11:5060/pirrotite"

    execute_sql_file(sql_file_path, db_connection_string)
