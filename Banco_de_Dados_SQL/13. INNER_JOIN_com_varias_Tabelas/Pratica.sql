-- Active: 1769088182955@@localhost@3306@cadastro
# Criando a tabela extra
CREATE Table gafanhoto_assiste_curso(
    id int NOT NULL AUTO_INCREMENT,
    data DATE,
    idgafanhoto int,
    idcurso int,
    PRIMARY KEY(id),
    Foreign Key (idgafanhoto) REFERENCES gafanhotos(id),
    Foreign Key (idcurso) REFERENCES cursos(idcurso)
) DEFAULT CHARSET = utf8;

# Inserindo registros
INSERT INTO gafanhoto_assiste_curso VALUES
(DEFAULT, '2014-03-01', '1', '2');

# Junção
SELECT  g.nome, c.nome FROM gafanhotos g
JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto
JOIN cursos c
ON c.idcurso = a.idcurso;