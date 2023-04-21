USE db_faculdade;
CREATE TABLE exemplo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    sobrenome VARCHAR(60) NOT NULL,
    ano_nascimento YEAR,
    sexo ENUM('f', 'm')
);

SELECT * FROM exemplo;

DESC exemplo;

INSERT INTO exemplo (nome, sobrenome, ano_nascimento, sexo)
VALUES
    ('Maria', 'Tavares', 2002, 'f'),
    ('Paulo', 'Antunes', 1985, 'm'),
    ('José', 'Campos', 1974, 'm'),
    ('Raissa', 'Domingues', 2012, 'f'),
    ('Ney', 'Merich', 1989, 'm'),
    ('Davi', 'Gin', 1994, 'm'),
    ('Julia', 'Santos', 2000, 'f'),
    ('Felipe', 'Antunes', 1988, 'm'),
    ('Leonardo', 'Baez', 1994, 'm');

SELECT * FROM exemplo;

DROP TABLE  exemplo;

# Desafio da aula
# 1) Crie um banco de dados da Faculdade. Esse banco deve ter duas tabelas:
# Aluno e Coordenador.

CREATE DATABASE db_faculdade;
USE db_faculdade;

CREATE TABLE tb_alunos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    nasciment DATE NOT NULL,
    naturalidade VARCHAR(100),
    telefone VARCHAR(20),
    curso VARCHAR(100) NOT NULL,
    mensalidade FLOAT
);

INSERT INTO tb_alunos (nome, sobrenome, nasciment, naturalidade, telefone, curso, mensalidade)
VALUES
    ('vinicio', 'brejinski','1997-01-27', 'balneário camboriú', '47992024645', 'ciência da computação', 399.99),
    ('leonardo', 'brejinski','1997-01-27', 'balneário camboriú', '47992024645', 'ciência da computação', 499.99),
    ('davi', 'brejinski','1997-01-27', 'balneário camboriú', '47992024645', 'ciência da computação', 599.99),
    ('maria', 'brejinski','1997-01-27', 'balneário camboriú', '47992024645', 'ciência da computação', 699.99),
    ('josé', 'brejinski','1997-01-27', 'balneário camboriú', '47992024645', 'ciência da computação', 799.99),
    ('alexandre', 'brejinski','1997-01-27', 'balneário camboriú', '47992024645', 'ciência da computação', 899.99),
    ('bruna', 'brejinski','1997-01-27', 'balneário camboriú', '47992024645', 'ciência da computação', 999.99),
    ('vitoria', 'brejinski','1997-01-27', 'balneário camboriú', '47992024645', 'ciência da computação', 299.99),
    ('gustavo', 'brejinski','1997-01-27', 'balneário camboriú', '47992024645', 'ciência da computação', 199.99),
    ('amanda', 'brejinski','1997-01-27', 'balneário camboriú', '47992024645', 'ciência da computação', 499.99);

SELECT * FROM tb_alunos;

CREATE TABLE tb_coordenadores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    nasciment DATE NOT NULL,
    curso VARCHAR(100) NOT NULL,
    salario FLOAT,
    telefone VARCHAR(20),
    dia_folga INT
);

INSERT INTO tb_coordenadores (nome, sobrenome, nasciment, curso, salario, telefone, dia_folga)
VALUES
    ('vinicio', 'brejinski','1997-01-27', 'ciência da computação', 2000.00, '47992024645', 1),
    ('leonardo', 'brejinski','1997-01-27', 'ciência da computação', 2000.00, '47992024645', 2),
    ('davi', 'brejinski','1997-01-27', 'ciência da computação', 2000.00, '47992024645', 3),
    ('maria', 'brejinski','1997-01-27', 'ciência da computação', 2000.00, '47992024645', 4),
    ('josé', 'brejinski','1997-01-27', 'ciência da computação', 2000.00, '47992024645', 5),
    ('alexandre', 'brejinski','1997-01-27', 'ciência da computação', 2000.00, '47992024645', 6),
    ('bruna', 'brejinski','1997-01-27', 'ciência da computação', 2000.00, '47992024645', 7),
    ('vitoria', 'brejinski','1997-01-27', 'ciência da computação', 2000.00, '47992024645', 5),
    ('gustavo', 'brejinski','1997-01-27', 'ciência da computação', 2000.00, '47992024645', 2),
    ('amanda', 'brejinski','1997-01-27', 'ciência da computação', 2000.00, '47992024645', 7);

SELECT * FROM tb_coordenadores;
