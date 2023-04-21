CREATE DATABASE dbcinema;
USE dbcinema;

CREATE TABLE IF NOT EXISTS atores (
    id_ator INT AUTO_INCREMENT PRIMARY KEY ,
    nome VARCHAR(100) NOT NULL ,
    sobrenome VARCHAR(100) NOT NULL ,
    nascimento YEAR
) CHARACTER SET utf8mb4;

CREATE TABLE IF NOT EXISTS diretores (
    id_diretor INT AUTO_INCREMENT PRIMARY KEY ,
    nome VARCHAR(100) NOT NULL ,
    sobrenome VARCHAR(100) NOT NULL ,
    nascimento YEAR
) CHARACTER SET utf8mb4;

CREATE TABLE IF NOT EXISTS filmes (
    id_filme INT AUTO_INCREMENT PRIMARY KEY ,
    nome_pt VARCHAR(80),
    nome_in VARCHAR(80) NOT NULL,
    ano YEAR ,
    premios INT,
    arrecadacao FLOAT ,
    custo FLOAT,
    genero VARCHAR(30),
    diretor INT,
    ator INT,
    CONSTRAINT fk_tores FOREIGN KEY (ator) REFERENCES atores(id_ator),
    CONSTRAINT fk_diretores FOREIGN KEY (diretor) REFERENCES diretores(id_diretor)

) CHARACTER SET utf8mb4;


insert INTO atores(nome,sobrenome,nascimento)
values
('Al' ,'Pacino', 1940),
('Tom' ,'Hanks', 1956),
('Michael' ,'J. Fox', 1961),
('Liam', 'Neeson', 1952),
('Henry', 'Thomas', 1971),
('Judy' ,'Garland', 1969),
('Orson' ,'Welles', 1915),
('Morgan', 'Freeman', 1937),
('John', 'Travolta', 1954),
('Humphrey', 'Bogart', 1901),
('Keir', 'Dullea', 1936),
('Harrison', 'Ford', 1942),
('Vivien', 'Leigh', 1913),
('Gregory' ,'Peck', 1916),
('Marlon', 'Brando', 1924),
('Woody', 'Allen', 1935),
('Anthony', 'Hopkins', 1937),
('Roy', 'Scheider', 1932),
('Emilio', 'Estevez', 1962),
('Jack', 'Nicholson', 1937),
('Kevin' ,'Spacey', 1959),
('Jack' ,'Nicholson', 1937),
('Anthony', 'Perkins', 1932),
('Demi' ,'Moore', 1962),
('Keanu', 'Reeves', 1964),
('Leonardo', 'DiCaprio', 1974),
('Hugh', 'Jackman', 1968),
('Sam' ,'Neill', 1947),
('Jim', 'Carrey', 1962),
('Sam', 'Worthington', 1976),
('Heath', 'Ledger', 1979),
('Ben', 'Burtt', 1948),
('Brad', 'Pitt', 1963),
('Guy' ,'Pearce', 1967);


insert INTO diretores(nome,sobrenome,nascimento)
values
('Francis', 'Ford Coppola',1939),
('Robert', 'Zemeckis',1951),
('Steven', 'Spielberg',1946),
('Victor', 'Fleming',1989),
('Orson', 'Welles',1915),
('Frank', 'Darabont',1959),
('Quentin', 'Tarantino',1963),
('Michael', 'Curtiz',1901),
('Stanley', 'Kubrick',1928),
('Robert', 'Mulligan',1925),
('Woody', 'Allen',1935),
('Jonathan', 'Demme',1944),
('John', 'Hughes',1950),
('Milos', 'Forman',1932),
('Sam','Mendes',1965),
('Alfred', 'Hitchcock',1901),
('Jerry', 'Zucker',1950),
('As','Wachowski',1967),
('James','Cameron',1954),
('Denis', 'Villeneuve',1967),
('Michel', 'Gondry',1963),
('Ang', 'Lee',1954),
('Andrew', 'Stanton',1965),
('Christopher', 'Nolan',1970),
('Danny', 'Boyle',1956);

desc filmes;

select*from atores;
select*from diretores;

insert INTO filmes (nome_pt,nome_in,ano, premios,arrecadacao,custo, genero,diretor,ator)
values
("O Poderoso Chefao" , "The Good father", 1972, 10,  550 , 73.5, 'drama',1,1),
('Forrest Gump: O Contador de Histórias' , 'Forrest Gump', 1994,6, 678,55, 'drama',2,2),
('De Volta Para o Futuro', 'Back `to` the Future', 1985,1, 381,19,'acao',2,3),
('A Lista de Schindler', 'Schindler `List`', 1993,7, 321,22,'drama',3,4),
('E.T. - O Extraterrestre', 'E.T. O Extraterrestre', 1982,4,792,10.5,'drama',3,5),
('O Mágico de Oz', 'The Wizard `of` Oz', 1939,1,3,0,'drama',4,6),
('Um Sonho de Liberdade', 'The Shawshank Redemption',1994,7,58.3,25,'drama',6,8),
('Pulp Fiction - Tempo de Violência', 'Pulp Fiction',1994,1,212.9,8,'drama',7,9),
('Casablanca','Casablanca',1942,3,3.7,0.964,'drama',8,10),
('Uma Odisséia Espaco', 'A Space Odyssey',1968,1,190,10.5,'ficcao',9,11),
('Indiana Jones e os Caçadores da Arca Perdida','Raiders the Lost Ark',1981,6,389.9,18,'acao',3,12),
('Apocalypse Now', 'Apocalypse Now', 1979,2,0,150,'acao',1,15),
('Noivo Neurótico', 'Noiva Nervosa',1977,0,38.2,31.5,'romance',11,16),
('O Silêncio dos Inocentes', 'The Silence the Lambs', 1991,5,272.7,19,'acao',12,17),
('Tubarão', 'Jaws', 1975,3,470.65, 9,'acao',3,18),
('E o Vento Levou', 'Gone with the Wind',1939,8,390,3.85,'drama',4,13),
('Clube dos Cinco', 'The Breakfast Club', 1985, 0, 51.52,1,'drama',13,19),
('Um Estranho `no` Ninho', '`One` Flew `Over` the Cuckoos Nest', 1975,5, 108.9,4,'drama',null,null),
('Beleza Americana', 'American Beauty', 1999,5, 356.2,15,'drama',15,21),
('O Iluminado', 'The Shining', 1980,0, 44.3,19,'terror',9,20),
('Psicose', 'Psycho', 1960,0, 60,0.8, 'terror',16,14),
('Ghost - `Do` Outro Lado da Vida', 'Ghost', 1990,2, 505.7,22,'drama',17,24),
('Matrix', 'Matrix', 1999,4, 463.5,63,'ficcao',18,25),
('Titanic', 'Titanic', 1997,10, 2.2,200, 'drama',19,26),
('O Resgate Soldado Ryan', 'Saving Private Ryan', 1998,5, 481.8,70,'acao',3,2),
('Os Suspeitos', 'Prisoners', 1995,0 , 118.4,983.46, 'drama',20,27),
('Jurassic Park: O Parque dos Dinossauros',	'Jurassic Park', 1993,3, 1.02,63,'acao',3,28),
('Brilho Eterno de uma Mente sem Lembrancas', 'Eternal Sunshine the Spotless Mind', 2004,1, 72,20, 'drama',21,29),
('Avatar', 'Avatar', 2009,3,  2.8,103.23,'acao',19,30),
('O Segredo de Brokeback Mountain	Brokeback Mountain', 'Brokeback Mountain', 2005,3,200,14,'drama',null,null),
('Wall-E', 'Wall-E', 2008,1, 521.3,180,'animação',23,32),
('A Origem', 'Inception', 2010,4 , 825,160,'ficcao',24,26),
('Seven - Os Sete Crimes Capitais', 'Seven',1995,0	, 327,30,'drama',null,null),
('Quem Quer Ser um Milionário?', 'Slumdog Millionaire', 2008, 7, 377.9,15,'drama',25,34),
('Amnésia', 'Memento', 2000 ,0, 39.7,5, 'drama',24,34);

SELECT * FROM filmes;

DESC filmes;