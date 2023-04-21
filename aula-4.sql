USE db_techclinic;

CREATE TABLE tbPacientes (
    id INT AUTO_INCREMENT PRIMARY KEY ,
    nomePaciente VARCHAR(70) NOT NULL ,
    sobrenomePaciente VARCHAR(70) NOT NULL ,
    nascimentoPaciente DATE NOT NULL ,
    sexoPaciente CHAR(3),
    nacionalidadePaciente VARCHAR(40) DEFAULT 'brasileiro'
);

INSERT INTO tbPacientes (nomePaciente, sobrenomePaciente, nascimentoPaciente, sexoPaciente, nacionalidadePaciente)
VALUES
    ('Jaime', 'Maciel', '1995-12-05', 'M', default),
    ('Amanda', 'Tavares', '2015-02-15', 'F', default),
    ('Jonas', 'Souza', '2015-07-15', 'M', default),
    ('Carla' ,'Maruch', '1999-12-25', 'F', default),
    ('Leonardo', 'Lins', '1985-01-28', 'M', 'argentino'),
    ('Fábia', 'Santana', '2008-03-12', 'F', default),
    ('Paulo', 'Viegas', '1985-12-18', 'M', 'argentino'),
    ('Ana', 'Tavares', '1990-07-29', 'F', default);

SELECT * FROM tbPacientes;
SELECT * FROM tbPacientes WHERE sexoPaciente = 'M';

SELECT nomePaciente, sobrenomePaciente, nacionalidadePaciente FROM tbPacientes WHERE nacionalidadePaciente = 'brasileiro';
SELECT nomePaciente, sobrenomePaciente, nacionalidadePaciente FROM tbPacientes WHERE nacionalidadePaciente = 'brasileiro' AND sexoPaciente = 'M';

SELECT nomePaciente, sobrenomePaciente, nacionalidadePaciente FROM tbPacientes WHERE nomePaciente = 'Jonas' OR nomePaciente = 'Ana';
SELECT nomePaciente, sobrenomePaciente, nacionalidadePaciente FROM tbPacientes WHERE nomePaciente IN ('Jonas', 'Ana');

SELECT * FROM tbPacientes WHERE nacionalidadePaciente = 'argentino';
SELECT * FROM tbPacientes WHERE sobrenomePaciente = 'Silva';

SELECT nomePaciente, sobrenomePaciente, nacionalidadePaciente FROM tbPacientes WHERE nomePaciente = 'Ana';
SELECT nomePaciente, sobrenomePaciente, nacionalidadePaciente FROM tbPacientes WHERE sobrenomePaciente = 'Lins';

SELECT * FROM tbPacientes WHERE nacionalidadePaciente IN ('argentino', 'chilenos');
SELECT * FROM tbPacientes WHERE nomePaciente = 'Anne' OR sobrenomePaciente = 'Lins';





