-- ================================
-- CONSULTAS SELECT DO PROJETO
-- ================================

-- 1) Listar todos os clientes em ordem alfabética
SELECT 
    id_cliente,
    nome,
    telefone,
    email
FROM cliente
ORDER BY nome ASC;

-----------------------------------------------------

-- 2) Buscar todos os serviços acima de 50 reais
SELECT
    id_servico,
    nome_servico,
    valor
FROM servico
WHERE valor > 50
ORDER BY valor DESC;

-----------------------------------------------------

-- 3) Listar os agendamentos com nome do cliente e do serviço (JOIN)
SELECT
    a.id_agendamento,
    c.nome AS cliente,
    s.nome_servico AS servico,
    a.data_hora,
    a.status_atendimento
FROM agendamento a
JOIN cliente c ON a.id_cliente = c.id_cliente
JOIN servico s ON a.id_servico = s.id_servico
ORDER BY a.data_hora ASC;

-----------------------------------------------------

-- 4) Mostrar os dois serviços mais rápidos (menor duração)
SELECT
    nome_servico,
    duracao_minutos
FROM servico
ORDER BY duracao_minutos ASC
LIMIT 2;

-----------------------------------------------------

-- 5) Listar produtos utilizados em cada agendamento (JOIN múltiplo)
SELECT
    a.id_agendamento,
    c.nome AS cliente,
    p.nome_produto AS produto,
    ap.quantidade
FROM agendamento_produto ap
JOIN agendamento a ON ap.id_agendamento = a.id_agendamento
JOIN cliente c ON a.id_cliente = c.id_cliente
JOIN produto p ON ap.id_produto = p.id_produto
ORDER BY a.id_agendamento, p.nome_produto;
