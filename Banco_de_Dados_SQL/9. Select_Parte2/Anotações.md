--- Obtendo Dados das tabelas (Select) parte 2 ---

1) Seleção por nome:
    . Exemplo:
        SELECT * FROM 'nome_da_tabela'
        WHERE nome = 'PHP';

        -> Aqui vai mostrar todas as linhas onde o campo 'nome' é igual a 'PHP'

2) Usando o Operador LIKE:
    - Utilidade:
        . Usado para buscar todas as linhas que o campo começa com uma determinada Letra.

    - Exemplo:  
        SELECT * FROM 'nome_da_tabela'
        WHERE nome LIKE 'P%'; -> Dizemos a letra que queremos (pode estar em minúsculo também)

    - WildCards:
        %:
            . Letra no final:
                SELECT * FROM 'nome_da_tabela'
                WHERE nome LIKE '%P';

                -> Vai mostrar todas as linhas onde o campo 'nome' termina com 'P'
        
            . Letra em qualquer lugar:
                . '%P%' -> Aqui vai pegar todas as linhas que contém a letra 'P' no campo em que vc escolheu

                . Exemplo;
                    SELECT * FROM 'nome_da_tabela'
                    WHERE nome LIKE '%P%';
        _:
            . Diferente do %, o _ exige que exista um caractere onde ele estiver.


3) Distinguindo (DISTINCT):
    - Utilidade:
        . Impedir que surjam ocorrências repetitivas, mostrando valores apenas uma vez sem repetir eles

        . Por exemplo, Se usamos ele no campo nacionalidade, vai mostrar todos os paisés que existem ali, mas sem repetir.
    
    - Exemplo:
        SELECT DISTINCT nacionalidade from 'nome_da_tabela'

        . Ele vai mostrar todos os países, sem repetir, por mais que existam 2 pessoas que moram no Japão, o nome Japão só irá aparecer uma vez.

4) Funções de Agregações:
    - COUNT:
        . SELECT COUNT(*) from 'nome_da_tabela' 
          WHERE carga > 40;

          . Aqui ele vai exibir quantas linhas possuem a carga maior que 40. Ele só vai mostrar o número, por exemplo, se existem 6 linhas, então vai ser exibido o número 6

    - MAX:
        . SELECT MAX(totaulas) FROM 'nome_da_tabela';

        . Aqui ele vai falar o máximo dentro do campo de totaulas. Se o maior número for 60, ele vai mostrar 60
    
    - MIN:
        . SELECT MIN(totaulas) FROM 'nome_da_tabela';

        . O contrário do MAX

    - SUM:
        . SELECT SUM(totaulas) FROM 'nome_da_tabela'

        . Faz um somatório

    - AVG:
        . SELECT AVG(totaulas) FROM 'nome_da_tabela'

        . Faz a média