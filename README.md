# Analise-Churn-SQL-Python-PBI

📊 Projeto: Análise de Churn e Retenção de Clientes
Este projeto simula um cenário real de análise de dados para identificar o cancelamento de clientes (Churn) em um serviço de assinatura. O objetivo foi criar um pipeline que extrai dados brutos, processa informações e gera insights para a tomada de decisão.

🚀 Tecnologias Utilizadas
MySQL: Modelagem e armazenamento de dados em tabelas relacionais.

Python (Pandas & SQLAlchemy): Extração de dados (ETL), tratamento de inconsistências e exportação de dados otimizados.

Power BI: Visualização de dados, criação de dashboard interativo e cálculos de KPIs via DAX.

🔄 Fluxo do Projeto
Extração: Os dados foram armazenados no MySQL em um esquema relacional.

Processamento (ETL): Utilizei Python para conectar ao banco, tratar os dados e calcular métricas iniciais, exportando o resultado para um arquivo .csv.

Visualização: No Power BI, criei indicadores chave como a Taxa de Churn, faturamento por plano e distribuição de status dos clientes.<img width="1258" height="734" alt="Screenshot_8" src="https://github.com/user-attachments/assets/e17819ff-c66c-41bf-b682-7ad2fd295536" />


📈 Resultados e Insights
Identificação de uma Taxa de Churn de 25%.

Análise de receita mostrando que o plano Gold é o principal motor financeiro da base.

Criação de um dashboard interativo que permite filtrar por tipo de assinatura para análises específicas.

🛠️ Desafios Superados
Configuração de conexão entre Python e MySQL usando drivers específicos.

Resolução de erros de sintaxe em medidas complexas de DAX.

Tratamento de erros de ambiente virtual e instalação de bibliotecas.

📂 Como usar este repositório
Execute o script SQL na pasta /database para criar o banco de dados.

Rode o script Python na pasta /scripts para gerar o arquivo de dados tratados.

Abra o arquivo .pbix na pasta /dashboard para visualizar o relatório final.
