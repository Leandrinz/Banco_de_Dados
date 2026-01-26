-- Active: 1769088182955@@localhost@3306@cadastro
DESCRIBE pessoas;

ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) after nome

ALTER Table pessoas
MODIFY COLUMN profissao VARCHAR(20);

ALTER Table pessoas
drop COLUMN profissao;

ALTER TABLE pessoas
CHANGE profissao prof VARCHAR(20);

ALTER Table Vaxco
RENAME to pessoas;

CREATE TABLE IF NOT EXISTS cursos(
    nome VARCHAR(30) NOT NULL UNIQUE,
    descricao TEXT,
    carga int UNSIGNED,
    totaulas int,
    ano YEAR DEFAULT '2026'
) DEFAULT CHARSET = utf8

ALTER Table cursos
ADD COLUMN idcurso int first;

ALTER Table cursos
add PRIMARY KEY (idcurso);

DESCRIBE cursos;

CREATE Table if not exists teste(
    id int,
    nome VARCHAR(10),
    idade int
);

insert into teste VALUES
('1', 'Pedro', '22'),
('2', 'Maria', '33'),
('3', 'Maricota', '32');

select * from teste

drop Table if exists teste;