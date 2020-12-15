DROP DATABASE primeiro;
# primeiro Banco de Dados - Pilotos de Fórmula 1
CREATE DATABASE primeiro;
USE primeiro;

CREATE TABLE pilotos (
id INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(45) NOT NULL,
sigla VARCHAR(4) UNIQUE,
patrocinador VARCHAR(30),
PRIMARY KEY(id)
);

INSERT INTO pilotos(nome,sigla,patrocinador) VALUES
('Ayrton Senna','SEN','Shell'),
('Sebastian Vettel','VET','	Ferrari'),
('Kimi Raikkonen','KIM','Alfa Romeo'),
('Lewis Hamilton','HAM','Mercedes');

# segundo Banco de Dados - Computadores e seus Fabricantes
DROP DATABASE segundo;
CREATE DATABASE segundo;
USE segundo;

CREATE TABLE fabricantes (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(25) NOT NULL,
diretor VARCHAR(45),
sede VARCHAR(20),
PRIMARY KEY(id)
);
INSERT INTO fabricantes(nome, diretor, sede) VALUES 
('Dell','Michael Dell','Texas, EUA'),
('Positivo','Oriovisto Guimarães','Curitiba, Brasil'),
('Xiaomi','Lei Jun','Pequim, China'),
('Samsung','Lee Byung-chul','Seul, Coreia do Sul');

CREATE TABLE computadores (
id INT AUTO_INCREMENT NOT NULL,
modelo VARCHAR(45) UNIQUE,
armazenamento VARCHAR(20),
processador VARCHAR(15),
valor FLOAT,
id_marca INT NOT NULL,
PRIMARY KEY(id),
CONSTRAINT FK_marca FOREIGN KEY (id_marca)
	REFERENCES fabricantes (id)
);
INSERT INTO computadores(modelo,armazenamento,processador,id_marca) VALUES 
('Inspiron','256GB SSD','intel i7',1),
('Mi Pro','500GB HD','intel i5',3),
('Book X30','1TB HD','intel i5',4),
('XPS','128GB SSD','intel i9',1),
('Vostro','1TB HD','intel pentium',1),
('Motion','1TB','intel Atom',2);

# SELECT * FROM primeiro.pilotos;
# SELECT * FROM segundo.computadores;		Testando inserção
# SELECT * FROM segundo.fabricantes;
