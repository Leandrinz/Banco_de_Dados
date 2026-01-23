-- Active: 1769088182955@@localhost@3306@mysql
CREATE DATABASE cadastro;

USE cadastro;

CREATE Table pessoas(
nome VARCHAR(30),
idade TINYINT,
sexo CHAR(1),
peso FLOAT,
altura FLOAT,
nacionalidade VARCHAR(20)
);

DESCRIBE pessoas