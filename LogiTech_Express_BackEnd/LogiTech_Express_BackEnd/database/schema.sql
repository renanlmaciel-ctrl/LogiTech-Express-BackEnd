CREATE DATABASE IF NOT EXISTS logitech_express
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE logitech_express;

-- Entidade independente de motoristas.
CREATE TABLE motoristas (
    id_motorista INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    status ENUM('ATIVO', 'INATIVO') NOT NULL DEFAULT 'ATIVO'
);

-- Uma rota pode ser utilizada por várias coletas.
CREATE TABLE rotas (
    id_rota INT AUTO_INCREMENT PRIMARY KEY,
    origem VARCHAR(150) NOT NULL,
    destino VARCHAR(150) NOT NULL,
    distancia_km DECIMAL(10,2) NOT NULL
);

-- Frota separada dos motoristas para evitar duplicidade.
CREATE TABLE veiculos (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL UNIQUE,
    modelo VARCHAR(80) NOT NULL,
    capacidade_kg DECIMAL(10,2) NOT NULL,
    status ENUM('DISPONIVEL', 'EM_USO', 'MANUTENCAO') NOT NULL DEFAULT 'DISPONIVEL'
);

-- Relação motorista-veículo.
CREATE TABLE alocacoes (
    id_alocacao INT AUTO_INCREMENT PRIMARY KEY,
    id_motorista INT NOT NULL,
    id_veiculo INT NOT NULL,
    data_inicio DATETIME NOT NULL,
    data_fim DATETIME NULL,
    FOREIGN KEY (id_motorista) REFERENCES motoristas(id_motorista),
    FOREIGN KEY (id_veiculo) REFERENCES veiculos(id_veiculo)
);

-- Coleta é relacionada a um motorista e a uma rota.
CREATE TABLE coletas (
    id_coleta INT AUTO_INCREMENT PRIMARY KEY,
    codigo_rastreio VARCHAR(30) NOT NULL UNIQUE,
    origem VARCHAR(150) NOT NULL,
    destino VARCHAR(150) NOT NULL,
    status ENUM('PENDENTE', 'EM_TRANSITO', 'ENTREGUE', 'CANCELADA') NOT NULL DEFAULT 'PENDENTE',
    data_coleta DATETIME NOT NULL,
    id_motorista INT NOT NULL,
    id_rota INT NOT NULL,
    FOREIGN KEY (id_motorista) REFERENCES motoristas(id_motorista),
    FOREIGN KEY (id_rota) REFERENCES rotas(id_rota)
);

-- Itens da frota não ficam mais em uma string separada por vírgulas.
CREATE TABLE ferramentas (
    id_ferramenta INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);

-- Relação N:N entre veículos e ferramentas.
CREATE TABLE veiculo_ferramentas (
    id_veiculo INT NOT NULL,
    id_ferramenta INT NOT NULL,
    quantidade INT NOT NULL DEFAULT 1,
    PRIMARY KEY (id_veiculo, id_ferramenta),
    FOREIGN KEY (id_veiculo) REFERENCES veiculos(id_veiculo),
    FOREIGN KEY (id_ferramenta) REFERENCES ferramentas(id_ferramenta)
);
