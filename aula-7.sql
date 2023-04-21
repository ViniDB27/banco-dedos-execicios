CREATE DATABASE db_store;
USE db_store;

CREATE TABLE tb_pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY ,
    codigo VARCHAR(100) NOT NULL ,
    cpf_responsavel VARCHAR(11) NOT NULL ,
    data_hora_realizado DATETIME NOT NULL ,
    valor FLOAT NOT NULL ,
    avaliacao INT NOT NULL ,
    data_hora_avaliacao DATETIME NOT NULL
);

CREATE TABLE tb_itens_pedido (
    id INT AUTO_INCREMENT PRIMARY KEY ,
    nome VARCHAR(100) NOT NULL ,
    descricao TEXT NOT NULL ,
    valor FLOAT NOT NULL ,
    observacao VARCHAR(255),
    id_pedido INT,
    FOREIGN KEY (id_pedido) REFERENCES tb_pedidos(id)
);

CREATE TABLE tb_pedido_status (
    id INT AUTO_INCREMENT PRIMARY KEY ,
    descricao VARCHAR(255),
    id_pedido INT,
    FOREIGN KEY (id_pedido) REFERENCES tb_pedidos(id)
);

CREATE TABLE  tb_tipo_pagamento_pedido (
    id INT AUTO_INCREMENT PRIMARY KEY ,
    tipo VARCHAR(100),
    id_pedido INT,
    FOREIGN KEY (id_pedido) REFERENCES tb_pedidos(id)
);