-- Active: 1769088182955@@localhost@3306@cadastro

SELECT * FROM cursos
WHERE nome = 'PHP';

SELECT * FROM cursos
WHERE nome LIKE 'P%';

SELECT * FROM cursos
WHERE nome LIKE '%P';

SELECT * FROM cursos
WHERE nome LIKE '%P%';

SELECT * from cursos
WHERE carga < 40;

SELECT * from gafanhotos
WHERE nome LIKE "%_Silva%";

SELECT DISTINCT nacionalidade from gafanhotos

SELECT COUNT(*) from cursos
WHERE carga > 40;

SELECT MAX(carga) from cursos

SELECT MIN(carga) from cursos

SELECT SUM(carga) from cursos

SELECT AVG(carga) from cursos