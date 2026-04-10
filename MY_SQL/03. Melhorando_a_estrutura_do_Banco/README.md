# Melhorando a Estrutura do Banco de Dados

## Introdução

Ao evoluir um banco de dados, não basta apenas criar tabelas. É importante pensar em:

* organização;
* desempenho;
* economia de memória;
* integridade dos dados.

Este guia mostra como melhorar a estrutura de um banco de dados no MySQL de forma prática e didática.

---

## 1. Removendo o banco de dados antigo 🗑️

Se você quiser apagar um banco de dados antigo para recriá-lo melhor estruturado, use o comando:

```sql
DROP DATABASE cadastro;
```

### Observação

Esse comando apaga:

* todas as tabelas;
* todos os dados;
* toda a estrutura do banco.

Use com cuidado.

---

## 2. Criando o banco com parâmetros ⚙️

Ao criar um banco, é importante definir configurações como suporte a acentos.

### Exemplo

```sql
CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;
```

### Explicando

* `CREATE DATABASE` → cria o banco.
* `DEFAULT CHARACTER SET utf8` → permite acentos e caracteres especiais.
* `DEFAULT COLLATE utf8_general_ci` → define regras de comparação de texto.

Isso evita problemas com nomes como:

```text
João, Vitória, São Paulo
```

---

## 3. Escolhendo bem os tipos de dados 📌

Ao criar tabelas, é importante usar tipos específicos em vez de tipos genéricos.

### Exemplo de boas escolhas

* `VARCHAR(30)` → para nomes.
* `DATE` → para datas.
* `ENUM` → para opções limitadas.
* `DECIMAL` → para números com casas decimais.

### Por que isso importa?

Porque ajuda em:

* melhor desempenho;
* menor uso de memória;
* mais organização.

### Exemplo ruim

```sql
nome CHAR(100)
peso INT
```

### Exemplo melhor

```sql
nome VARCHAR(30)
peso DECIMAL(5,2)
```

---

## 4. Tornando campos obrigatórios ✍️

Alguns dados precisam ser informados obrigatoriamente.

Por exemplo:

* nome da pessoa;
* CPF;
* data de nascimento.

Para isso, usamos `NOT NULL`.

### Exemplo

```sql
CREATE TABLE pessoas(
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM('M', 'F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil'
) DEFAULT CHARSET = utf8;
```

### Explicando

* `NOT NULL` → impede campo vazio.
* `DATE` → armazena datas.
* `ENUM('M', 'F')` → limita valores possíveis.
* `DEFAULT 'Brasil'` → valor padrão caso nada seja informado.
* `DEFAULT CHARSET = utf8` → mantém acentuação correta.

---

## 5. Criando chave primária 🔑

A chave primária funciona como uma identificação única para cada registro.

Pense como:

* matrícula de aluno;
* CPF;
* número de protocolo.

Ela evita duplicidade de registros.

---

## 6. Usando AUTO_INCREMENT

Para não precisar preencher o ID manualmente, usamos `AUTO_INCREMENT`.

### Funcionamento

```text
1º cadastro → ID = 1
2º cadastro → ID = 2
3º cadastro → ID = 3
```

O sistema gera automaticamente.

---

## 7. Estrutura completa da tabela pessoas

```sql
CREATE TABLE pessoas(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM('M', 'F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (id)
) DEFAULT CHARSET = utf8;
```

---

## 8. Entendendo cada campo visualmente

```text
┌────────────────────────────────────────────┐
│ id            → identificador único        │
│ nome          → nome da pessoa             │
│ nascimento    → data de nascimento         │
│ sexo          → M ou F                     │
│ peso          → peso com casas decimais    │
│ altura        → altura com casas decimais  │
│ nacionalidade → valor padrão: Brasil       │
└────────────────────────────────────────────┘
```

---

## 9. Resumo final

Para melhorar um banco de dados:

* remova estruturas antigas quando necessário;
* defina charset corretamente;
* escolha bons tipos de dados;
* use campos obrigatórios;
* defina chave primária;
* automatize IDs.

Esses cuidados deixam o banco mais:

* seguro;
* organizado;
* rápido;
* profissional.
