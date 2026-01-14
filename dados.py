import pandas as pd
from sqlalchemy import create_engine

# --- CONFIGURAÇÃO ---
USER = 'root'
PASSWORD = ''  # <--- COLOQUE SUA SENHA AQUI
HOST = 'localhost'
DATABASE = 'projeto_analise_dados'


def main():
    try:
        # String de conexão usando pymysql (mais estável)
        conn_str = f"mysql+pymysql://{USER}:{PASSWORD}@{HOST}/{DATABASE}"
        engine = create_engine(conn_str)

        print("Conectando ao banco...")

        query = """
        SELECT c.nome, c.tipo_assinatura, a.status_atual, a.valor_mensal
        FROM clientes c
        JOIN assinaturas a ON c.id_cliente = a.id_cliente
        """

        df = pd.read_sql(query, engine)

        # Gera o arquivo CSV
        df.to_csv('dados_tratados.csv', index=False)
        print("\n" + "=" * 30)
        print("CONSEGUIMOS!")
        print("O arquivo 'dados_tratados.csv' foi criado.")
        print("=" * 30)

    except Exception as e:
        print(f"\nERRO: {e}")
        print("Dica: Verifique se sua senha está correta e se o MySQL Workbench está aberto.")


if __name__ == "__main__":
    main()