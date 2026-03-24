# 🗄️ Criando o Primeiro Banco de Dados (MySQL)

---

## 1️⃣ O que é um banco de dados (resumo estrutural)

Um banco de dados é uma **coleção organizada de dados**.

### 📌 Estrutura:

```
Banco de dados → Tabelas → Registros → Campos
```

- **Tabelas** → onde os dados ficam organizados  
- **Registros** → linhas da tabela  
- **Campos** → colunas (características dos dados)  

---

## 2️⃣ Tipos primitivos no MySQL

### 🔢 Numéricos

#### Inteiros
- `TINYINT`
- `SMALLINT`
- `INT`
- `MEDIUMINT`
- `BIGINT`

💡 Diferença:
- Apenas a **quantidade de bytes (tamanho)**

---

#### Reais
- `DECIMAL`
- `FLOAT`
- `DOUBLE`
- `REAL`

---

#### Lógicos
- `BIT`
- `BOOLEAN`

---

### 📅 Data e tempo
- `DATE`
- `DATETIME`
- `TIMESTAMP`
- `TIME`
- `YEAR`

---

### 🔤 Literais

#### Caracteres
- `CHAR`
- `VARCHAR`

---

#### Texto
- `TINYTEXT`
- `TEXT`
- `MEDIUMTEXT`
- `LONGTEXT`

---

#### Binário
- `TINYBLOB`
- `BLOB`
- `MEDIUMBLOB`
- `LONGBLOB`

---

#### Coleções
- `ENUM`
- `SET`

---

### 🌍 Espacial
- `GEOMETRY`
- `POINT`
- `POLYGON`
- `MULTIPOLYGON`

---

## 3️⃣ Criando um banco de dados

```sql
CREATE DATABASE cadastro;
```

📌 Observação:
- Isso cria o banco, mas você precisa selecioná-lo para usar

---

## 4️⃣ Selecionando o banco

```sql
USE cadastro;
```

---

## 5️⃣ Criando uma tabela

```sql
CREATE TABLE pessoas(
    nome VARCHAR(30),
    idade TINYINT,
    sexo CHAR(1),
    peso FLOAT,
    altura FLOAT,
    nacionalidade VARCHAR(20)
);
```

📌 Aqui definimos:
- Nome da tabela → `pessoas`
- Campos → `nome`, `idade`, etc.
- Tipos → `VARCHAR`, `FLOAT`, etc.

---

## 6️⃣ Fluxo completo

```sql
CREATE DATABASE cadastro;

USE cadastro;

CREATE TABLE pessoas(
    nome VARCHAR(30),
    idade TINYINT,
    sexo CHAR(1),
    peso FLOAT,
    altura FLOAT,
    nacionalidade VARCHAR(20)
);
```

---

## 7️⃣ Ver estrutura da tabela

```sql
DESCRIBE pessoas;
```

📌 Mostra:
- Nome dos campos  
- Tipo de dados  
- Outras informações da tabela  

---

## ✔ Conclusão

- Banco de dados organiza dados em tabelas  
- Cada tabela possui campos e registros  
- MySQL usa tipos específicos para cada dado  
- Comandos básicos:
  - `CREATE DATABASE`
  - `USE`
  - `CREATE TABLE`
  - `DESCRIBE`

---

## 💡 Dica

👉 Dominar essa base é essencial antes de aprender:
- Inserção de dados (`INSERT`)
- Consultas (`SELECT`)
- Filtros (`WHERE`)