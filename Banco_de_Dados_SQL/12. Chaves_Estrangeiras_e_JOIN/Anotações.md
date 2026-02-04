--- Chaves Estrangeiras e JOIN ---

1) Engine:
    . Quando criamos uma tabela, no final também definimos a engine que vamos usar.

    . Engine: -> Motor que vai ser responsável pela criação da tabela

    . Por padrão (No MySQL), mesmo que vc nn coloque ela, será selecionado a InnoDB, que tem suporte a chaves estrangeiras, e também realiza as 4 principais regras de transição (ACID)

    - ACID: 
        . Atomicidade: Ela não pode ser dividida em subtarefas (ou toda tarefa é feita, ou nada é considerado)

        . Consistência: Se antes de fazer a transação, o banco de dados estava OK, depois da transação, ele também tem que estar OK

        . Isolamento: Quando há duas transações acontecendo ao mesmo tempo, elas devem acontecer como se estivessem sendo executados de forma isolada

        . Durabilidade: Se vc salvar um dado de um cliente, ele deve ficar lá, até mudar. 

2) Adicionando a Foreign Key:
    ALTER TABLE 'nome_da_tabela'
    ADD COLUMN 'nome_da_chave' int;

    . Após isso, transformamos em uma chave estrangeira

    ALTER TABLE 'nome_da_tabela'
    ADD FOREIGN KEY ('nome_da_chave') -> Transforma em chave est
    REFERENCES cursos(idcurso); -> Diz qual a tabela referente e sua chave

    - Como fazer a ligação de cada linha:
        SELECT * FROM gafanhotos;
        SELECT * FROM cursos;
        
        UPDATE gafanhotos SET cursopreferido = '6' where id = '1';  

        . Aqui temos que o aluno com o id 1, vai preferir o curso com código 6.

3) Integridade Referêncial:
    . Após fazer as ligações, se tentarmos apagar o curso ao qual a tabela dominante foi ligada, ocorrerá um erro

    . Exemplo:
        DELETE FROM cursos WHERE idcurso = '6';

        . Essa instrução vai dar erro, pois o curso do id = 6, já tem relações. 

        . PORÉM, se for um idcurso onde esse curso nn tem nenhuma relação, ele será apagado.

4) JOIN / Junção:
   . Após fazermos as ligações, agora temos um problema. Ao usar o select para vermos o curso no qual tal aluno prefere, só vemos o número de seu id. Para isso ser solucionado e vermos o nome do curso, devemos fazer uso do JOIN.

   4.1) Exemplo INNER JOIN:
        SELECT gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano from gafanhotos JOIN cursos
        ON cursos.idcurso = gafanhotos.cursopreferido;

        . Esse JOIN vai mostrar apenas aqueles alunos que possuem algum curso preferido, caso haja algum com NULL, ele não mostra, isso chamamos de INNER JOIN
    
    4.2) OUTER JOIN:
        . Mostra até aqueles que não tem relações

        . Exemplo:
            SELECT g.nome, g.cursopreferido, c.nome, c.ano from gafanhotos as g  LEFT OUTER JOIN cursos as c
            ON c.idcurso = g.cursopreferido;

            . O LEFT é pra dar preferência a tabela à esquerda do JOIN, no caso o gafanhotos, mostrando todos, mesmo aqueles sem relação

            . RIGHT OUTER JOIN:
                . Dá preferência a tabela à direita, no caso a tabela cursos, mostrando TODOS os cursos, até aqueles sem relações