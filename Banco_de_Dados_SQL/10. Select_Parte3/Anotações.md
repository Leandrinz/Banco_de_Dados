--- Obtendo Dados das tabelas (Select) parte 3 ---

1) Agrupando:
    . Diferente do Distinguindo, vamos agrupar pessoas que possuem determinadas características iguais

    . Exemplo:  
        SELECT 'nome_do_campo' from 'nome_da_tabela'
        GROUP BY 'nome_do_campo';
    
    1.1) Agrupando e agregando:
        SELECT 'nome_do_campo', count(nome) from 'nomoe_da_tabela'
        GROUP BY 'nome_do_campo';

        . Aqui criamos dois resultados, uma tabela que mostra o campo e o número de ocorrência.
    
    1.2) HAVING:
        SELECT 'nome_do_campo', COUNT(nome) from 'nome_da_tabela'
        GROUP BY carga
        HAVING COUNT(nome) > 3; -> Coloca um requisito, onde só irá mostrar aqueles que tem ocorrências maiores do que 3. 

        - Você só usa o HAVING para o parâmetro que vc agrupou:

        . Correto:
            SELECT ano, count(nome) from cursos
            GROUP BY ano -> Parâmetro ano
            HAVING ano > 2012; -> Parâmetro ano

        . Errado:
            SELECT ano, count(nome) from cursos
            GROUP BY ano -> Parâmetro ano
            HAVING totaulas > 10; -> Parâmetro totaulas

            . Parâmetros diferentes dá erro!!!

2) Juntando um Select no outro:
    . E se eu quiser fazer o having tendo como requisito a média de um determinado campo?

    . Exemplo:
        SELECT carga, count(*) from cursos
        where ano > 2015
        group by carga
        having carga > (select avg(carga) from cursos)

        . Colocamos o select entre parênteses como um requisito

        carga, ano -> nome do campo
        cursos -> nome da tabela