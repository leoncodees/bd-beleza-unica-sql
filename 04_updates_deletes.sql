-- ================================
-- COMANDOS UPDATE
-- ================================

-- 1) Atualizar o status de um agendamento
UPDATE agendamento
SET status_atendimento = 'Remarcado'
WHERE id_agendamento = 1;

-----------------------------------------------------

-- 2) Atualizar o valor de um serviço
UPDATE servico
SET valor = 90.00
WHERE id_servico = 2;

-----------------------------------------------------

-- 3) Atualizar o telefone de um cliente
UPDATE cliente
SET telefone = '11900001111'
WHERE id_cliente = 3;

-----------------------------------------------------

-- ================================
-- COMANDOS DELETE
-- ================================


-- 1) Remover o registro associado ao produto 2 na tabela associativa
DELETE FROM agendamento_produto
WHERE id_produto = 2;

-----------------------------------------------------

-- 2) Agora excluir o produto 2 da tabela produto
DELETE FROM produto
WHERE id_produto = 2;

-----------------------------------------------------

-- 3) Excluir o serviço 4 (Maquiagem Completa)
DELETE FROM servico
WHERE id_servico = 4;
