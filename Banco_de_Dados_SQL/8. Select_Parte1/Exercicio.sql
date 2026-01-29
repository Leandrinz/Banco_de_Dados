-- Active: 1769088182955@@localhost@3306@cadastro

select * from gafanhotos

SELECT * from cursos
ORDER BY ano;

SELECT ano, nome, carga from cursos
WHERE ano = '2016'
ORDER BY ano, carga, nome;

SELECT ano, nome, carga from cursos
WHERE ano in (2017, 2016)
ORDER BY ano, carga, nome;