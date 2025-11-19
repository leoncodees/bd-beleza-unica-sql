-- ================================
-- INSERINDO DADOS NAS TABELAS
-- ================================

-- CLIENTES
INSERT INTO cliente (id_cliente, nome, telefone, email) VALUES
(1, 'Ana Rodrigues', '11987654321', 'ana.rodrigues@gmail.com'),
(2, 'Bruna Souza', '11991234567', 'bruna.souza@gmail.com'),
(3, 'Carla Menezes', '11999887766', 'carla.menezes@gmail.com');

-- PROFISSIONAIS
INSERT INTO profissional (id_profissional, nome, especialidade, disponibilidade_horario) VALUES
(1, 'Mariana Alves', 'Cabeleireira', 'Seg a Sex 09h-18h'),
(2, 'João Victor', 'Manicure/Pedicure', 'Ter a Sab 10h-19h'),
(3, 'Letícia Pinto', 'Maquiadora', 'Seg a Sex 13h-20h');

-- SERVIÇOS
INSERT INTO servico (id_servico, nome_servico, descricao, duracao_minutos, valor) VALUES
(1, 'Corte Feminino', 'Corte completo com finalização', 45, 60.00),
(2, 'Hidratação Capilar', 'Hidratação profunda para cabelos danificados', 50, 80.00),
(3, 'Manicure', 'Cuidado completo das unhas das mãos', 30, 35.00),
(4, 'Maquiagem Completa', 'Maquiagem profissional para eventos', 60, 150.00);

-- AGENDAMENTOS
INSERT INTO agendamento (id_agendamento, data_hora, status_atendimento, id_cliente, id_profissional, id_servico) VALUES
(1, '2025-11-20 14:00:00', 'Agendado', 1, 1, 1),
(2, '2025-11-21 10:30:00', 'Concluído', 2, 2, 3);

-- PAGAMENTOS
INSERT INTO pagamento (id_pagamento, data_pagamento, valor_total, forma_pagamento, status_pagamento, id_agendamento) VALUES
(1, '2025-11-21', 35.00, 'Cartão', 'Pago', 2);

-- PRODUTOS
INSERT INTO produto (id_produto, nome_produto, marca, tipo, preco) VALUES
(1, 'Máscara Nutritiva', 'L’Oréal', 'Tratamento', 120.00),
(2, 'Esmalte Nude Elegante', 'Risqué', 'Esmalte', 8.00);

-- AGENDAMENTO_PRODUTO (ASSOCIATIVA)
INSERT INTO agendamento_produto (id_agendamento, id_produto, quantidade) VALUES
(1, 1, 1),
(2, 2, 1);
