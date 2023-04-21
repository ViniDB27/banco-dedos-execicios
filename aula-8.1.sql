USE db_faculdade;
CREATE  TABLE pessoa (
    id INT AUTO_INCREMENT NOT NULL,
    primeiroNome VARCHAR(100) NOT NULL,
    ultimoNome VARCHAR(100) NOT NULL,
    nascimento YEAR,
    PRIMARY KEY (id)
);

CREATE TABLE pessoa (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    primeiroNome VARCHAR(100) NOT NULL,
    ultimoNome VARCHAR(100) NOT NULL,
    nascimento YEAR,
    PRIMARY KEY (id)
);

CREATE TABLE pessoa (
    id INT NOT NULL ,
    primeiroNome VARCHAR(100) NOT NULL,
    ultimoNome VARCHAR(100) NOT NULL,
    nascimento YEAR,
    CONSTRAINT PK_person PRIMARY KEY (id, ultimoNome)
);

ALTER TABLE pessoa ADD PRIMARY KEY (id);

CREATE TABLE ordem_servco (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL ,
    id_client INT,
    FOREIGN KEY (id_client) REFERENCES clientes(id)
);

CREATE TABLE ordem_servco (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL ,
    id_client INT,
    CONSTRAINT FK_person FOREIGN KEY (id_client) REFERENCES pessoas(id)
);

ALTER TABLE ordem_servco
ADD FOREIGN KEY (id_client) REFERENCES pessoas(id);

ALTER TABLE ordem_servco
ADD CONSTRAINT  FK_person
FOREIGN KEY (id_client) REFERENCES pessoas(id);
