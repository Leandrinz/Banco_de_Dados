-- Active: 1769088182955@@localhost@3306@cadastro

DESCRIBE gafanhotos

ALTER Table gafanhotos
ADD COLUMN cursopreferido int;

ALTER Table gafanhotos
add FOREIGN key(cursopreferido)
REFERENCES cursos(idcurso);

SELECT * FROM gafanhotos;
SELECT * FROM cursos;
UPDATE gafanhotos SET cursopreferido = '7' where cursopreferido = '1'; 

SELECT nome, ano from cursos;

SELECT g.nome, g.cursopreferido, c.nome, c.ano from gafanhotos as g LEFT OUTER join cursos as c
ON c.idcurso = g.cursopreferido;