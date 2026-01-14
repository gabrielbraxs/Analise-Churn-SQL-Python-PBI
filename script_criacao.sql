-- Criação do Banco de Dados e Tabelas
CREATE DATABASE IF NOT EXISTS projeto_analise_dados;
USE projeto_analise_dados;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    estado VARCHAR(2),
    data_cadastro DATE,
    tipo_assinatura VARCHAR(20)
);

CREATE TABLE assinaturas (
    id_assinatura INT PRIMARY KEY,
    id_cliente INT,
    valor_mensal DECIMAL(10, 2),
    status_atual VARCHAR(20),
    data_cancelamento DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE logs_uso (
    id_log INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    data_acesso DATETIME,
    minutos_logado INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Inserção de Dados (Seed)
INSERT INTO clientes VALUES 
(1, 'João Silva', 'SP', '2023-01-10', 'Gold'),
(2, 'Maria Souza', 'RJ', '2023-03-15', 'Silver'),
(3, 'Carlos Lima', 'MG', '2023-05-20', 'Basic'),
(4, 'Ana Oliveira', 'SP', '2023-06-05', 'Gold');

INSERT INTO assinaturas VALUES 
(101, 1, 99.90, 'Ativo', NULL),
(102, 2, 49.90, 'Cancelado', '2023-11-10'),
(103, 3, 29.90, 'Ativo', NULL),
(104, 4, 99.90, 'Ativo', NULL);

INSERT INTO logs_uso (id_cliente, data_acesso, minutos_logado) VALUES 
(1, '2024-01-01 10:00:00', 45), (1, '2024-01-02 11:30:00', 30),
(2, '2023-10-01 09:00:00', 10), (3, '2024-01-05 18:00:00', 60);