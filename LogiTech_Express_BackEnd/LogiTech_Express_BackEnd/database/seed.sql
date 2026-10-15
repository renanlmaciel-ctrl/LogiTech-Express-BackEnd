USE logitech_express;

INSERT INTO motoristas (nome, cpf, telefone) VALUES
('Carlos Silva', '111.111.111-11', '(49) 99999-1111'),
('Ana Souza', '222.222.222-22', '(49) 99999-2222');

INSERT INTO rotas (origem, destino, distancia_km) VALUES
('São Paulo - SP', 'Curitiba - PR', 408.50),
('Curitiba - PR', 'Florianópolis - SC', 300.20);

INSERT INTO veiculos (placa, modelo, capacidade_kg) VALUES
('ABC1D23', 'Caminhão Logi 500', 15000.00),
('EFG4H56', 'Van Express', 2500.00);

INSERT INTO ferramentas (nome, descricao) VALUES
('Macaco hidráulico', 'Equipamento para manutenção'),
('Kit primeiros socorros', 'Kit obrigatório de segurança'),
('Lanterna', 'Lanterna para inspeção noturna');

INSERT INTO veiculo_ferramentas VALUES
(1, 1, 1),
(1, 2, 2),
(2, 2, 1),
(2, 3, 1);

INSERT INTO alocacoes (id_motorista, id_veiculo, data_inicio)
VALUES (1, 1, NOW());

INSERT INTO coletas
(codigo_rastreio, origem, destino, status, data_coleta, id_motorista, id_rota)
VALUES
('LT20260001', 'São Paulo - SP', 'Curitiba - PR', 'PENDENTE', NOW(), 1, 1);
