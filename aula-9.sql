SELECT filmes.nome_in, filmes.nome_pt, atores.nome, atores.sobrenome FROM filmes INNER JOIN atores ON ator = atores.id_ator;

#Exercicios

CREATE DATABASE sevico_assunaturas;
USE sevico_assunaturas;

CREATE TABLE IF NOT EXISTS assinantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
) CHARACTER SET utf8mb4;

INSERT INTO assinantes (nome) VALUES ('Olivia Palito');

CREATE TABLE IF NOT EXISTS atividade (
    id INT AUTO_INCREMENT PRIMARY KEY ,
    ramo VARCHAR(100) NOT NULL,
    id_assinante Int,
    FOREIGN KEY (id_assinante) REFERENCES assinantes(id)
) CHARACTER SET utf8mb4;

INSERT INTO atividade (ramo, id_assinante) VALUES ('Gerente', 4);

CREATE TABLE IF NOT EXISTS tipo_assinatura (
    id INT AUTO_INCREMENT PRIMARY KEY ,
    tipo VARCHAR(100) NOT NULL,
    id_assinante Int,
    FOREIGN KEY (id_assinante) REFERENCES assinantes(id)
) CHARACTER SET utf8mb4;

INSERT INTO tipo_assinatura (tipo, id_assinante) VALUES ('Comercial', 4);

CREATE TABLE IF NOT EXISTS municipios (
    id INT AUTO_INCREMENT PRIMARY KEY ,
    nome VARCHAR(100) NOT NULL
) CHARACTER SET utf8mb4;

INSERT INTO municipios (nome) VALUES ('João Câmara');

CREATE TABLE IF NOT EXISTS enderecos (
    id INT AUTO_INCREMENT PRIMARY KEY ,
    rua VARCHAR(100) NOT NULL ,
    numero INT,
    complemento VARCHAR(100),
    bairro VARCHAR(100) NOT NULL ,
    CEP VARCHAR(8) NOT NULL,
    id_assinante Int,
    FOREIGN KEY (id_assinante) REFERENCES assinantes(id),
    id_municipio Int,
    FOREIGN KEY (id_municipio) REFERENCES municipios(id)
) CHARACTER SET utf8mb4;

INSERT INTO enderecos (rua, numero, complemento, bairro, CEP, id_assinante, id_municipio)
VALUES ('Emiliano Ramos Branco', 39, 'Casa Térreo', 'Centro', '88502250', 4, 4);

CREATE TABLE telefones (
    id INT AUTO_INCREMENT PRIMARY KEY ,
    ddd VARCHAR(3) NOT NULL,
    numero VARCHAR(9) NOT NULL ,
    id_endereco INT,
    FOREIGN KEY (id_endereco) REFERENCES enderecos(id)
) CHARACTER SET utf8mb4;

INSERT INTO telefones (ddd, numero, id_endereco) VALUES ('47', '992024646', 4);

SELECT assinantes.nome, enderecos.rua, enderecos.numero, enderecos.bairro, enderecos.CEP, telefones.ddd, telefones.numero
FROM assinantes INNER JOIN enderecos on assinantes.id = enderecos.id_assinante
INNER JOIN telefones on enderecos.id = telefones.id_endereco;

SELECT assinantes.nome, atividade.ramo FROM assinantes
INNER JOIN atividade ON assinantes.id = atividade.id_assinante
ORDER BY atividade.ramo, assinantes.nome;

SELECT

SELECT * FROM assinantes
INNER JOIN tipo_assinatura ta on assinantes.id = ta.id_assinante
INNER JOIN enderecos e on assinantes.id = e.id_assinante
INNER JOIN municipios m on e.id_municipio = m.id
WHERE m.nome = 'Pelotas'
AND ta.tipo = 'Residencial';

# SELECT assinantes.nome, t.ddd, t.numero FROM assinantes
# INNER JOIN enderecos e on assinantes.id = e.id_assinante
# INNER JOIN telefones t on e.id = t.id_endereco
# WHERE ;

SELECT assinantes.nome, telefones.numero,  tipo_assinatura.tipo FROM assinantes
INNER JOIN tipo_assinatura on assinantes.id = tipo_assinatura.id_assinante
INNER JOIN enderecos on assinantes.id = enderecos.id_assinante
INNER JOIN telefones on enderecos.id = telefones.id_endereco
INNER JOIN municipios on enderecos.id_municipio = municipios.id
WHERE tipo_assinatura.tipo = 'Comercial'
AND municipios.nome IN ('Natal', 'João Câmara');