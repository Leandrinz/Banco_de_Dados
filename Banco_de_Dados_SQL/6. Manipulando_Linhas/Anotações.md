--- Manipulando Linhas/Tuplas/Registros ---

1) Modificar uma linha:
    - Exemplo:
        UPDATE cursos -> Seleciona a tabela
        SET nome = 'HTML5' -> Seleciona campo e modifica
        WHERE idcurso = '1'; -> Seleciona linha correta através da chave primária "idcurso"
    
    - Podemos fazer isso 2 vezes ao mesmo tempo:
        UPDATE cursos
        SET nome = 'PHP', ano = '2015' -> Só colocar tudo separada por vírgula
        WHERE idcurso = '4' -> Seleciona a linha correspondente 

2) Limitar ação do comando UPDATE:
    . LIMIT 1; -> Ao final do update, faz com que só uma linha seja afetada

3) Removendo uma linha:
    - Exemplo:
        DELETE FROM 'nome_da_tabela'
        WHERE idcurso = '8'; -> Seleciona linha

    - Se quiser apagar de acordo com outro parâmetro:
        DELETE FROM 'nome_da_tabela'
        WHERE ano = '2015; -> Traduzindo, onde o campo ano estiver 2015, a linha correspondente será apagada

4) Removendo todas as linhas:
    TRUNCATE TABLE 'nome_da_tabela';