--- Alterando a Estrutura da Tabela ---

1) ALTER TABLE:
    . Comando para alterar a estrutura da tabela
    
    . ADD COLUMN "nome_da_coluna" # Adiciona uma coluna

    . DROP COLUMN "nome_da_coluna"; # Excluimos a coluna

    - Se vc quiser adicionar a columa após uma determinada coluna, poder fazer isso:
        . ADD COLUMN "nome_da_coluna" VARCHAR(10) AFTER "nome_da_coluna_anterior";

    - "Mas e seu quiser colocar na primeira posição?":
        . ADD COLUMN "nome_da_coluna" int FIRST;

    1.1) Modificando Definições:
        - É possível que ao adicionar uma coluna, vc coloque o tipo primitivo errado ou com caracteres insuficientes, para mudar seguimos esse comando:
            .   ALTER TABLE pessoas
                MODIFY COLUMN "nome_da_coluna" VARCHAR(20); # Após digitar o nome da coluna, vc conserta o tipo primitivo e a quantidade de espaço

    1.2) Renomeando Coluna:
        - Se quiser mudar o nome de uma coluna:
            Ex:
                ALTER TABLE pessoas
                CHANGE COLUMN "nome_antigo" "novo_nome" VARCHAR(20);

    1.3) Renomeando Tabela:
        - Se quiser mudar o nome da tabela inteira:
            Ex:
                ALTER TABLE "nome_da_tabela"
                RENAME TO "nome_novo";

    1.4) Nova tabela:
        Ex:
            CREATE TABLE IF NOT EXISTS cursos( # Criamos a tabela caso não existe uma chamada cursos
                nome VARCHAR(30) NOT NULL UNIQUE, # O UNIQUE quer dizer que o nome será unico, não pode haver outro com o mesmo nome
                descricao TEXT,
                carga int UNSIGNED, # O UNSIGNED faz com que nn sejam aceitos números negativos
                totaulas int,
                ano YEAR DEFAULT '2026'
            ) DEFAULT CHARSET = utf8

    1.5) Adicionando Chave Primária:
        Ex:
            ALTER TABLE cursos
            ADD COLUMN idcurso int FIRST;

            ALTER TABLE cursos
            ADD PRIMARY KEY(idcurso);


2) Apagando a Tabela - DROP TABLE:
    DROP IF EXISTS "nome_da_tabela_a_ser_apagada"

OBS: Os comandos ALTER TABLE e DROP TABLE são comandos DDL(Data Definition Language)