--- 11. Modelo Relacional / Relacionando Tabelas (N:N) --- 

Nesta aula, o foco é entender como transformar a teoria do Diagrama Entidade-Relacionamento (DER) em tabelas reais, especialmente em casos complexos.

1. Conceitos de Mapeamento:
    Entidade vira Tabela.

    Atributo vira Coluna (Campo).

    Relacionamento pode virar uma Chave Estrangeira ou uma Nova Tabela.

2. O Relacionamento Muitos-para-Muitos (N:N):
    O exemplo prático utilizado é a relação entre Gafanhotos (Alunos) e Cursos.

    A Regra de Negócio:

    Um Gafanhoto pode assistir vários cursos.

    Um Curso pode ter vários gafanhotos assistindo.

    Conclusão: Temos um relacionamento N:N.

    Regra de Ouro: No Modelo Relacional, você nunca cria um relacionamento N:N direto entre duas tabelas. É necessário criar uma tabela intermediária (Tabela de Ligação).

3. Relacionamento 1 para 1:
   Exemplo: Um esposo só pode se ligar a uma esposa.

4. Regras para troca de chaves estrangeiras:
   
    . A forma como as chaves se movem depende do tipo de relação:

    - 1 para 1
        Identifica-se a entidade dominante.

        Pega-se a Chave Primária de um e joga para dentro do outro como Chave Estrangeira (FK).

        As chaves devem ser do mesmo tipo primitivo (ex: INT com INT).

    - 1 para Muitos (1:N)
        Pega a chave primária do Lado 1 e joga no Lado Muitos como chave estrangeira.

    - Muitos para Muitos (N:N)
        A relação entre as tabelas vira uma nova entidade (Tabela de Ligação).

        Exemplo: Cliente (Entidade) <---> Compra (Relação) <---> Produto (Entidade)

        A "Compra" vira uma tabela própria.

        Criamos 2 mini relacionamentos: um ligando Compra ao Cliente e outro ligando Compra ao Produto.