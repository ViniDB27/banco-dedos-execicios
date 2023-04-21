CREATE DATABASE escola;
USE escola;
CREATE TABLE alunos (
	nome varchar(100),
    sobrenome varchar(100),
    idade int
);
DESC alunos;
SELECT * FROM alunos;

CREATE DATABASE db_faculdade;
USE db_faculdade;
CREATE TABLE tb_alunos (
    nome varchar(100) not null ,
    sobrenome varchar(100) not null ,
    nasciment date,
    sexo enum('F', 'M'),
    curso varchar(60) not null ,
    salario float
);

INSERT INTO tb_alunos
    (nome, sobrenome, nasciment, sexo, curso, salario)
VALUES
    ('Maria', 'Silva', '2000-07-02','F', 'engenharia', 550.30);

SELECT * FROM tb_alunos;

CREATE DATABASE db_techclinic;
USE db_techclinic;

CREATE TABLE tb_paciente (
    nome varchar(100) not null,
    sobrenome varchar(100) not null,
    nasciment date,
    sexo enum('F', 'M'),
    telefone varchar(20),
    cpf varchar(11) not null,
    patologia varchar(255) not null
);

INSERT INTO tb_paciente (nome, sobrenome, nasciment, sexo, telefone, cpf, patologia) VALUES ('José', 'Rocha', '2000-11-25', 'M', '47992024645', '00000000001', 'Não sei');
INSERT INTO tb_paciente (nome, sobrenome, nasciment, sexo, telefone, cpf, patologia) VALUES ('Maria', 'Rocha', '2003-05-22', 'F', '47992024646', '00000000002', 'Não sei');
INSERT INTO tb_paciente (nome, sobrenome, nasciment, sexo, telefone, cpf, patologia) VALUES ('José', 'Alves', '1995-03-15', 'M', '47992024647', '00000000003', 'Não sei');
INSERT INTO tb_paciente (nome, sobrenome, nasciment, sexo, telefone, cpf, patologia) VALUES ('Maria', 'Alves', '2004-02-18', 'M', '47992024648', '00000000004', 'Não sei');
INSERT INTO tb_paciente (nome, sobrenome, nasciment, sexo, telefone, cpf, patologia) VALUES ('José', 'Castro', '2006-06-07', 'M', '47992024649', '00000000005', 'Não sei');

SELECT * FROM tb_paciente;

CREATE TABLE  tb_medicos (
    nome varchar(100) not null,
    sobrenome varchar(100) not null,
    especilidade varchar(255) not null,
    salario float,
    telefone varchar(20) not null
);

INSERT INTO tb_medicos (nome, sobrenome, especilidade, salario, telefone) VALUES ('José', 'Cunha', 'cardiologistas', 55000.00, '47992024645');
INSERT INTO tb_medicos (nome, sobrenome, especilidade, salario, telefone) VALUES ('Pedro', 'Castro', 'clinico geral', 25000.00, '47992024646');
INSERT INTO tb_medicos (nome, sobrenome, especilidade, salario, telefone) VALUES ('Marilda', 'Correia', 'ortopedistas.', 45000.00, '47992024647');
INSERT INTO tb_medicos (nome, sobrenome, especilidade, salario, telefone) VALUES ('Lucas', 'Andrades', 'ortopedistas.', 28000.00, '47992024648');
INSERT INTO tb_medicos (nome, sobrenome, especilidade, salario, telefone) VALUES ('João', 'Cortes', 'cardiologistas', 49000.00, '47992024649');

SELECT * FROM tb_medicos;