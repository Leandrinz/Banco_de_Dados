-- Active: 1769088182955@@localhost@3306@cadastro

SELECT DISTINCT carga from cursos
ORDER BY carga;

SELECT carga from cursos
GROUP BY carga;

SELECT carga, COUNT(nome) from cursos
GROUP BY carga
ORDER BY count(nome) DESC;

SELECT * from cursos where carga = 10;

SELECT carga, COUNT(nome) from cursos
GROUP BY carga
HAVING COUNT(nome) > 3
ORDER BY count(nome) DESC;

SELECT ano, count(nome) from cursos
GROUP BY ano
HAVING ano > 2012;

SELECT ano, count(nome) from cursos
GROUP BY ano
HAVING totaulas > 10;