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
-- Conferir tabelas criadas
SHOW TABLES;

DESCRIBE cliente;
DESCRIBE profissional;
DESCRIBE servico;
DESCRIBE agendamento;
DESCRIBE pagamento;
DESCRIBE produto;
DESCRIBE agendamento_produto;
-- ========================
-- INSERINDO DADOS
-- ========================

-- CLIENTES
INSERT INTO cliente (id_cliente, nome, telefone, email)
VALUES
(1, 'Ana Rodrigues', '11987654321', 'ana.rodrigues@gmail.com'),
(2, 'Bruna Souza', '11991234567', 'bruna.souza@gmail.com'),
(3, 'Carla Menezes', '11999887766', 'carla.menezes@gmail.com');

-- PROFISSIONAIS
INSERT INTO profissional (id_profissional, nome, especialidade, disponibilidade_horario)
VALUES
(1, 'Mariana Alves', 'Cabeleireira', 'Seg a Sex 09h-18h'),
(2, 'João Victor', 'Manicure/Pedicure', 'Ter a Sab 10h-19h'),
(3, 'Letícia Pinto', 'Maquiadora', 'Seg a Sex 13h-20h');

-- SERVICOS
INSERT INTO servico (id_servico, nome_servico, descricao, duracao_minutos, valor)
VALUES
(1, 'Corte Feminino', 'Corte completo com finalização', 45, 60.00),
(2, 'Hidratação Capilar', 'Hidratação profunda para cabelos danificados', 50, 80.00),
(3, 'Manicure', 'Cuidado completo das unhas das mãos', 30, 35.00),
(4, 'Maquiagem Completa', 'Maquiagem profissional para eventos', 60, 150.00);

-- AGENDAMENTOS
INSERT INTO agendamento (id_agendamento, data_hora, status_atendimento, id_cliente, id_profissional, id_servico)
VALUES
(1, '2025-11-20 14:00:00', 'Agendado', 1, 1, 1),
(2, '2025-11-21 10:30:00', 'Concluído', 2, 2, 3);

-- PAGAMENTOS
INSERT INTO pagamento (id_pagamento, data_pagamento, valor_total, forma_pagamento, status_pagamento, id_agendamento)
VALUES
(1, '2025-11-21', 35.00, 'Cartão', 'Pago', 2);

-- PRODUTOS
INSERT INTO produto (id_produto, nome_produto, marca, tipo, preco)
VALUES
(1, 'Máscara Nutritiva', 'L’Oréal', 'Tratamento', 120.00),
(2, 'Esmalte Nude Elegante', 'Risqué', 'Esmalte', 8.00);

-- AGENDAMENTO_PRODUTO
INSERT INTO agendamento_produto (id_agendamento, id_produto, quantidade)
VALUES
(2, 2, 1),
(1, 1, 1);

-- ========================
-- CONSULTANDO OS DADOS
-- ========================

SELECT * FROM cliente;
SELECT * FROM profissional;
SELECT * FROM servico;
SELECT * FROM agendamento;
SELECT * FROM pagamento;
SELECT * FROM produto;
SELECT * FROM agendamento_produto;
-- CONSULTAS AVANÇADAS (SELECT com WHERE, ORDER BY, LIMIT, JOIN)

-- 1) Agendamentos com detalhes completos
SELECT
    a.id_agendamento,
    a.data_hora,
    a.status_atendimento,
    c.nome AS nome_cliente,
    p.nome AS nome_profissional,
    s.nome_servico,
    s.valor
FROM agendamento a
JOIN cliente c ON a.id_cliente = c.id_cliente
JOIN profissional p ON a.id_profissional = p.id_profissional
JOIN servico s ON a.id_servico = s.id_servico
ORDER BY a.data_hora;

-- 2) Serviços mais caros (top 3)
SELECT nome_servico, valor
FROM servico
ORDER BY valor DESC
LIMIT 3;

-- 3) Pagamentos pagos
SELECT *
FROM pagamento
WHERE status_pagamento = 'Pago';

-- 4) Produtos do tipo 'Tratamento'
SELECT *
FROM produto
WHERE tipo = 'Tratamento';

-- 5) Agendamentos concluídos com cliente e serviço
SELECT 
    a.id_agendamento,
    c.nome AS cliente,
    s.nome_servico,
    a.data_hora
FROM agendamento a
JOIN cliente c ON a.id_cliente = c.id_cliente
JOIN servico s ON a.id_servico = s.id_servico
WHERE a.status_atendimento = 'Concluído';
-- ========================
-- COMANDOS UPDATE
-- ========================

-- 1) Atualizar o status de um agendamento
UPDATE agendamento
SET status_atendimento = 'Remarcado'
WHERE id_agendamento = 1;

-- 2) Atualizar o valor de um serviço
UPDATE servico
SET valor = 90.00
WHERE id_servico = 2;

-- 3) Atualizar telefone de um cliente
UPDATE cliente
SET telefone = '11900001111'
WHERE id_cliente = 3;
-- ========================
-- ========================
-- COMANDOS DELETE 
-- ========================

-- 1) Primeiro, remover os vínculos do produto 2 na tabela associativa
DELETE FROM agendamento_produto
WHERE id_produto = 2;

-- 2) Agora sim, excluir o produto 2
DELETE FROM produto
WHERE id_produto = 2;

-- 3) Excluir o serviço 4 (Maquiagem Completa), que não está em nenhum agendamento
DELETE FROM servico
WHERE id_servico = 4;
