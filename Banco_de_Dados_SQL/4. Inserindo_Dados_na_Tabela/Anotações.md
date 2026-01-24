--- Inserindo Dados na Tabela (INSERT INTO) ---

1) Como inserir dados no banco de dados:
    . Exemplo:
        USE cadastro; # Seleciona o banco de dados

        INSERT INTO pessoas # Seleciona tabela
        (nome, nascimento, sexo, peso, altura, nacionalidade) # Campos que vão ser preenchidos
        VALUES
        ('Leandro', '2006-07-24', 'M', '67.2', '1.64', 'Brasil'); # Dados à serem inseridos

    . Obs: Não colocamos o id, pq ela é automaticamente preenchida como vimos na aula 3 -> Melhorando_a_estrutura_do_Banco

    . Obs 2 -> Você pode fazer isso:
         INSERT INTO pessoas VALUES
        ('Leandro', '2006-07-24', 'M', '67.2', '1.64', 'Brasil'); 
    
        . Porém, para isso acontecer, os dados tem que estar na mesma ordem na qual foi organizado o banco de dados

2) Múltiplos cadastros:
    - Exemplo:
        INSERT INTO pessoas
        (id, nome, nascimento, sexo, peso, altura, nacionalidade)
        VALUES
        (DEFAULT, 'Ana', '1975-12-22', 'F', '52.3', '1.45', 'EUA'),
        (DEFAULT, 'Pedro', '2000-07-15', 'M', '52.3', '1.45', 'Brasil'),
        (DEFAULT, 'Maria', '1999-05-30', 'F', '75.9', '1.70', 'Portugal');

3) DDL e DML:
    - DDL:
        . Data Definition Language
        . Comandos para definição
        . CREATE DATABASE, CREATE TABLE
    
    - DML:
        . Data Manipulation Language
        . Comandos para manipulação
        . INSERT INTO