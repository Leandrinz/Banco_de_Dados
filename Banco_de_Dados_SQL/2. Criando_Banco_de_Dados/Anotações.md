--- Criando o primeiro Banco de Dados --- 

- Banco de dados são:
    . Coleções de dados de características separadas em locais específicos (tabelas -> Registros)

    . Nessas tabelas teremos características (registros), que são chamadas de "campos"

    . RESUMO: banco de dados -> tabelas -> registros -> campos

- Tipos primitivos:

    . Numérico: 
        . Inteiro:  
            . TinyInt
            . SmallInt
            . Int
            . MediumInt
            . BigInt

         # No inteiro, vemos que ele se divide em várias ramificações, mas a única coisa que muda é a quantidade de Bytes que ele vai ocupar. Por exemplo: O TinyInt usa menos Bytes que o BigInt!

        . Real:
            . Decimal
            . Float
            . Double
            . Real
        
        # Mesma coisa para os Reais e assim por diante

        . Lógico:
            . Bit, Boolean
   

    . Data/tempo:
        . Date, DateTime, TimeStamp, Time, Year
    
    . Literal: 
        . Caractere:
            . Char
            . VarChar
        . Texto:
            . TinyText
            . Text
            . MediumText
            . LongText
        . Binário:
            . TinyBlob
            . Blob
            . MediumBlob
            . LongBlob
        . Coleção:
            . Enum
            . Set
    
    . Espacial:
        . Geometry
        . Point
        . Polygon
        . MultiPolygon


1) Como criar um banco de dados no MySQL:
    CREATE DATABASE cadastro;

    # Esse comando criou um banco de dados chamado "cadastro", pra visualizar, precisamos ir no DATABASE, no arquivo.sql só teremos o script(receita do banco de dados)


2) Como criar tabelas no MySQL:
    CREATE Table pessoas(
    nome VARCHAR(30),
    idade TINYINT,
    sexo CHAR(1),
    peso FLOAT,
    altura FLOAT,
    nacionalidade VARCHAR(20)
    );

    # Esse comando criou uma tabela 
    . Note que nela colocamos os campos(ex -> nome) e em seguida colocamos seus tipos

3) Associar os comandos ao banco de dados:
    USE "nome do seu banco de dados"

    - Exemplo: 
        CREATE DATABASE cadastro;

        USE cadastro;

        CREATE Table pessoas(
        nome VARCHAR(30),
        idade TINYINT,
        sexo CHAR(1),
        peso FLOAT,
        altura FLOAT,
        nacionalidade VARCHAR(20)
        );

4) Como ver a estrutura interna de uma tabela x:
    DESCRIBE "nome da tabela"
