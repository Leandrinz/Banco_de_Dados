# Alterando a Estrutura da Tabela (ALTER TABLE)

## Introdução

Depois de criar uma tabela, é comum precisar fazer ajustes:

* adicionar novos campos;
* remover colunas desnecessárias;
* corrigir tipos de dados;
* renomear colunas;
* renomear tabelas.

Para isso, usamos principalmente o comando `ALTER TABLE`.

Este guia explica essas alterações de forma clara e prática.

---

## 1. O que é ALTER TABLE? 🛠️

O comando `ALTER TABLE` serve para modificar a estrutura de uma tabela já existente.

### Ele permite:

* adicionar colunas;
* excluir colunas;
* alterar tipos de dados;
* renomear colunas;
* renomear tabelas.

---

## 2. Adicionando colunas ➕

Para adicionar uma nova coluna:

```sql
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(20);
```

### O que acontece?

```text
A tabela ganha uma nova coluna chamada profissao
```

---

## 3. Definindo a posição da nova coluna 📌

### Adicionar depois de uma coluna específica

```sql
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(20) AFTER nome;
```

### Resultado

A coluna `profissao` ficará logo após `nome`.

---

### Adicionar na primeira posição

```sql
ALTER TABLE pessoas
ADD COLUMN codigo INT FIRST;
```

### Resultado

A nova coluna será a primeira da tabela.

---

## 4. Removendo colunas 🗑️

Se uma coluna não for mais necessária:

```sql
ALTER TABLE pessoas
DROP COLUMN profissao;
```

### Atenção

Esse comando remove:

* a coluna;
* os dados que estavam nela.

---

## 5. Corrigindo tipo ou tamanho da coluna ✏️

Se você criou uma coluna com tamanho errado, use `MODIFY COLUMN`.

### Exemplo

```sql
ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(30);
```

### O que isso faz?

```text
Altera o tipo ou o tamanho permitido da coluna
```

---

## 6. Renomeando uma coluna 🔄

Se quiser mudar o nome de uma coluna:

```sql
ALTER TABLE pessoas
CHANGE COLUMN profissao ocupacao VARCHAR(30);
```

### Explicando

* `profissao` → nome antigo.
* `ocupacao` → nome novo.
* `VARCHAR(30)` → tipo precisa ser informado novamente.

---

## 7. Renomeando uma tabela 🏷️

Para mudar o nome da tabela inteira:

```sql
ALTER TABLE pessoas
RENAME TO clientes;
```

### Resultado

```text
Tabela pessoas passa a se chamar clientes
```

---

## 8. Criando nova tabela com boas práticas 📚

Podemos criar uma nova tabela mais completa.

### Exemplo: tabela cursos

```sql
CREATE TABLE IF NOT EXISTS cursos(
    nome VARCHAR(30) NOT NULL UNIQUE,
    descricao TEXT,
    carga INT UNSIGNED,
    totaulas INT,
    ano YEAR DEFAULT '2026'
) DEFAULT CHARSET = utf8;
```

---

## 9. Entendendo os recursos usados

### `IF NOT EXISTS`

Evita erro se a tabela já existir.

### `UNIQUE`

Impede valores repetidos.

Exemplo:

```text
Não pode existir dois cursos com o mesmo nome
```

### `UNSIGNED`

Não permite números negativos.

Exemplo:

```text
Carga horária não pode ser -20
```

### `YEAR`

Armazena apenas o ano.

---

## 10. Adicionando chave primária em tabela pronta 🔑

Se a tabela foi criada sem ID, podemos adicionar depois.

### Passo 1: criar coluna ID

```sql
ALTER TABLE cursos
ADD COLUMN idcurso INT FIRST;
```

### Passo 2: definir chave primária

```sql
ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);
```

### Resultado

```text
Cada curso terá um identificador único
```

---

## 11. Apagando uma tabela inteira ⚠️

Se quiser excluir uma tabela:

```sql
DROP TABLE IF EXISTS cursos;
```

### O que esse comando faz?

Remove:

* tabela;
* colunas;
* todos os dados.

Use com cuidado.

---

## 12. DDL: linguagem de definição 🧠

Os comandos vistos aqui fazem parte do grupo DDL.

### DDL = Data Definition Language

São comandos usados para definir ou alterar estruturas.

### Exemplos

```sql
CREATE TABLE
ALTER TABLE
DROP TABLE
```

### Função

```text
Criar, alterar e remover estruturas do banco
```

---

## 13. Resumo final

Com `ALTER TABLE`, você pode:

* adicionar colunas;
* apagar colunas;
* mudar tipos;
* renomear colunas;
* renomear tabelas.

Esses comandos ajudam a manter o banco:

* organizado;
* atualizado;
* eficiente.
