# Inserindo Dados na Tabela (INSERT INTO)

## Introdução

Depois de criar o banco de dados e as tabelas, o próximo passo é inserir informações.

No MySQL, usamos o comando `INSERT INTO` para cadastrar dados em uma tabela.

Este guia explica como fazer isso de forma simples e organizada.

---

## 1. Selecionando o banco de dados 📂

Antes de inserir dados, é importante escolher qual banco será usado.

```sql
USE cadastro;
```

### O que esse comando faz?

Ele informa ao MySQL:

```text
"Quero trabalhar dentro do banco cadastro"
```

---

## 2. Inserindo um cadastro ✍️

Para inserir uma pessoa na tabela, usamos:

```sql
INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Leandro', '2006-07-24', 'M', '67.2', '1.64', 'Brasil');
```

---

## 3. Entendendo a estrutura do INSERT

### Estrutura geral

```sql
INSERT INTO nome_da_tabela
(campo1, campo2, campo3)
VALUES
(valor1, valor2, valor3);
```

### Explicando cada parte

* `INSERT INTO` → comando para inserir dados.
* `pessoas` → tabela onde os dados serão salvos.
* `(nome, nascimento...)` → campos que serão preenchidos.
* `VALUES` → valores enviados para esses campos.

---

## 4. Por que o ID não foi informado? 🔑

O campo `id` não precisa ser preenchido manualmente porque ele foi criado com:

```sql
AUTO_INCREMENT
```

### Isso significa:

```text
1º cadastro → ID = 1
2º cadastro → ID = 2
3º cadastro → ID = 3
```

O sistema preenche automaticamente.

---

## 5. Inserindo sem informar os campos

Também é possível inserir direto com `VALUES`, sem listar os campos:

```sql
INSERT INTO pessoas VALUES
(DEFAULT, 'Leandro', '2006-07-24', 'M', '67.2', '1.64', 'Brasil');
```

### Atenção

Nesse caso:

* a ordem dos valores precisa estar exatamente igual à ordem da tabela;
* qualquer erro de posição pode gerar falha ou dados errados.

### Recomendação

Prefira sempre informar os campos para evitar confusão.

---

## 6. Inserindo vários cadastros de uma vez 📋

Você pode cadastrar várias pessoas com um único comando.

### Exemplo

```sql
INSERT INTO pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
(DEFAULT, 'Ana', '1975-12-22', 'F', '52.3', '1.45', 'EUA'),
(DEFAULT, 'Pedro', '2000-07-15', 'M', '52.3', '1.45', 'Brasil'),
(DEFAULT, 'Maria', '1999-05-30', 'F', '75.9', '1.70', 'Portugal');
```

---

## 7. Vantagens de inserir múltiplos dados

* mais rápido;
* menos repetição de código;
* melhor produtividade.

### Fluxo visual

```text
INSERT INTO
   ↓
Tabela escolhida
   ↓
Campos definidos
   ↓
Valores enviados
   ↓
Dados salvos
```

---

## 8. DDL e DML 🧠

No MySQL, os comandos são divididos por função.

### DDL — Data Definition Language

São comandos de definição da estrutura.

Exemplos:

```sql
CREATE DATABASE
CREATE TABLE
ALTER TABLE
DROP DATABASE
```

### Função:

```text
Criar, alterar ou remover estruturas
```

---

### DML — Data Manipulation Language

São comandos de manipulação dos dados.

Exemplos:

```sql
INSERT INTO
UPDATE
DELETE
SELECT
```

### Função:

```text
Inserir, alterar, apagar ou consultar dados
```

---

## 9. Resumo final

Para inserir dados corretamente:

* selecione o banco com `USE`;
* use `INSERT INTO`;
* informe os campos corretamente;
* aproveite o `AUTO_INCREMENT`;
* use múltiplos inserts para ganhar tempo.

Esses cuidados ajudam a manter o banco:

* organizado;
* seguro;
* fácil de manter.
