-- ================================
-- TABELA CLIENTE
-- ================================
CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(80) UNIQUE
);

-- ================================
-- TABELA PROFISSIONAL
-- ================================
CREATE TABLE profissional (
    id_profissional INT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    especialidade VARCHAR(50),
    disponibilidade_horario VARCHAR(50)
);

-- ================================
-- TABELA SERVICO
-- ================================
CREATE TABLE servico (
    id_servico INT PRIMARY KEY,
    nome_servico VARCHAR(80) NOT NULL,
    descricao TEXT,
    duracao_minutos INT,
    valor DECIMAL(10,2) NOT NULL
);

-- ================================
-- TABELA AGENDAMENTO
-- ================================
CREATE TABLE agendamento (
    id_agendamento INT PRIMARY KEY,
    data_hora DATETIME NOT NULL,
    status_atendimento VARCHAR(30),
    id_cliente INT,
    id_profissional INT,
    id_servico INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_profissional) REFERENCES profissional(id_profissional),
    FOREIGN KEY (id_servico) REFERENCES servico(id_servico)
);

-- ================================
-- TABELA PAGAMENTO
-- ================================
CREATE TABLE pagamento (
    id_pagamento INT PRIMARY KEY,
    data_pagamento DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    forma_pagamento VARCHAR(20),
    status_pagamento VARCHAR(30),
    id_agendamento INT,
    FOREIGN KEY (id_agendamento) REFERENCES agendamento(id_agendamento)
);

-- ================================
-- TABELA PRODUTO
-- ================================
CREATE TABLE produto (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(80),
    marca VARCHAR(50),
    tipo VARCHAR(50),
    preco DECIMAL(10,2)
);

-- ================================
-- TABELA AGENDAMENTO_PRODUTO
-- (TABELA ASSOCIATIVA)
-- ================================
CREATE TABLE agendamento_produto (
    id_agendamento INT,
    id_produto INT,
    quantidade INT,
    PRIMARY KEY (id_agendamento, id_produto),
    FOREIGN KEY (id_agendamento) REFERENCES agendamento(id_agendamento),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);
