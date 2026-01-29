--- Obtendo Dados das Tabelas (Select) Parte 1 ---

1) Selecionando todas as colunas de uma tabela:
    . Exemplo:
        SELECT * FROM 'nome_da_tabela';

    . Se quiser apenas um campo, faz:
        SELECT 'nome_do_campo' FROM 'nome_da_tabela';
    
    . Se quiser alguns, e não todos:
        SELECT 'nome_do_campo1', 'nome_do_campo2'...,FROM 'nome_da_tabela'

2) Ordenação Crescente:
    . Exemplo:
        SELECT * FROM 'nome_da_tabela'
        ORDER BY 'nome_do_campo';

        . Aqui ele irá organizar em ordem crescente conforme o campo que vc escolheu. Por exemplo, se vc escolhe idade, vai mostrar do menor até o maior.
    
3) Ordem inversa:
    SELECT * FROM 'nome_da_tabela'
    ORDER BY 'nome_do_campo' DESC;
    
4) Selecionando linhas e colunas:   
    . Podemos filtrar de acordo com a ordem que queremos e ainda quais as linhas queremos que apareçam

    . Exemplo:
        SELECT ano, nome, carga from cursos -> Filtramos os campos
        WHERE ano = '2016' -> Parâmetro para exibição
        ORDER BY ano, carga, nome; -> Ordem de acordo com nossa preferência

5) Selecionando Intervalos:
    . BETWEEN
    . Exemplo:
        SELECT * FROM 'nome_da_tabela'
        WHERE 'nome_do_campo' BETWEEN '20' AND '30'
        ORDER BY 'nome_do_campo';

6) Selecionando Valores:
    . In
    . Exemplo:
        SELECT 'nome_do_campo' from 'nome_da_tabela'
        WHERE 'nome_do_campo' in (2014, 2016)
        order by 'nome_do_campo'

7) Combinando Testes:   
    . Operadores lógicos
    . Exemplo:
        SELECT * FROM 'nome_da_tabela'
        WHERE carga > 35 AND totaulas < 30
        order by nome;

        . Aqui só vai exibir os resultados da linha onde o campo 'carga' for maior que 35 e o 'totaulas' < 30

8) DQL:
    . O SELECT faz parte da DQL (Data Query Language)