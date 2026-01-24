--- Melhorando a Estrutura do Banco de Dados ---

. Queremos melhorar o nosso banco de dados, então deletamos o antigo banco de dados intitulado "cadastro", fazemos isso criando uma file.sql e nela digitamos:
    DROP DATABASE cadastro;

1) Parâmetros na criação do banco de dados:
    . Após o comando para criar o banco de dados, podemos colocar uma série de parâmetros

    . Exemplo: 
        CREATE DATABASE cadastro # -> Comando de criação
        DEFAULT CHARACTER SET utf8 # -> Parâmetro de acentuação
        DEFAULT COLLATE utf8_general_ci;

2) Otimização do banco de dados:
    . É muito importante que ao criar as tabelas com as características (nome, altura, nacionalidade, etc...), você utilize os tipos primitivos mais adequados possíveis e não somente os genéricos como (Int, Char...)

    . Pois essa escolha vai ajudar na otimização do uso de memória. 

    . Revise os tipos primitivos nas anotações da Aula 2 -> "Criando_Banco_de_Dados"!

3) Obrigatoriedade de preenchimento de dados:
    . Quando definimos a tabela e queremos que um dos campos sejam obrigatorios para ser preenchido, por exemplo -> O nome é obrigatório que seja informado, então fazemos:

        CREATE TABLE pessoas(
            nome VARCHAR(30) NOT NULL, # Utilizamos o NOT NULL para dizer que o preenchimento é obrigatório
            nascimento DATE, # Data de nascimento
            sexo ENUM('M', 'F'), # Dizemos os valores aceitos
            peso DECIMAL(5, 2), # 5 Casas, 2 números após a vírgula
            altura DEcIMAL(3, 2),
            nacionalidade VARCHAR(20) DEFAULT 'Brasil' # Se nn digitar nada, por padrão será Brasil
        ) DEFAULT CHARSET = utf8; # Essa linha é para especificar que a tabela deve estar configurada para tratar acentos

4) Chave Primária:
    . Funciona como uma matrícula, só existe uma para cada pessoa, isso evita que haja uma duplicação da mesma pessoa.
    
    . Fazemos isso assim:
        CREATE TABLE pessoas(
            id int NOT NULL AUTO_INCREMENT, # O Auto_increment faz com que esse espaço seja preenchido automaticamente. Dessa forma -> 1º Cadastro, o id é 1, 2º Cadastro, o id é 2, e assim por diante
            nome VARCHAR(30) NOT NULL,
            nascimento DATE,
            sexo ENUM('M', 'F'),
            peso DECIMAL(5,2),
            altura DECIMAL(3,2),
            nacionalidade VARCHAR(20) DEFAULT 'Brasil'
            PRIMARY KEY(ID) # Torna o ID a chave primária 
        ) DEFAULT CHARSET = utf8;