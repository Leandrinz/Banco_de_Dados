--- INNER JOIN com várias tabelas ---

1) Cardinalidade -> Muitos para Muitos:
   . Veja as anotações da Aula 11 para ver a estratégia, pois a partir de agora é a execução da parte teórica.

   - 1.1) Criando a Tabela extra:
        CREATE TABLE gafanhoto_assiste_curso(
        id int NOT NULL AUTO_INCREMENT,
        data date,
        idgafanhoto int, 
        idcurso int, 
        PRIMARY KEY (id)
        FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),
        FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)
        ) DEFAULT CHARSET = utf8;
    
    - 1.2) Como colocar dados dentro:
        INSERT INTO gafanhoto_assiste_curso VALUES
        (DEFAULT, '2014-03-01', '1', '2');
    
    - 1.3) Junções:
        SELECT  g.nome, c.nome FROM gafanhotos g
        JOIN gafanhoto_assiste_curso a
        ON g.id = a.idgafanhoto
        JOIN cursos c
        ON c.idcurso = a.idcurso;