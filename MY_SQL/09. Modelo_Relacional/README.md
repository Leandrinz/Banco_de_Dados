# Modelo Relacional e Relacionamento N:N

## 1. Introdução

O Modelo Relacional é a forma como transformamos o Diagrama Entidade-Relacionamento (DER) em tabelas reais no banco de dados.

Ele define como entidades, atributos e relacionamentos são convertidos em estruturas SQL.

---

## 2. Mapeamento do DER para o Banco de Dados

No processo de modelagem:

```text
Entidade        → Tabela
Atributo        → Coluna (Campo)
Relacionamento  → Chave Estrangeira ou Tabela intermediária
```

### Exemplo

* Entidade: Aluno → Tabela `alunos`
* Atributo: nome → coluna `nome`
* Relacionamento → depende do tipo (1:1, 1:N, N:N)

---

## 3. Relacionamento Muitos para Muitos (N:N)

### Exemplo clássico

```text
Gafanhoto (Aluno) ↔ Curso
```

### Regras de negócio

* Um gafanhoto pode fazer vários cursos
* Um curso pode ter vários gafanhotos

### Conclusão

```text
Isso caracteriza um relacionamento N:N
```

---

## 4. Regra de ouro do N:N ⚠️

Em bancos relacionais:

```text
N:N direto NÃO existe
```

### Solução

Criamos uma tabela intermediária chamada:

```text
Tabela de Ligação
```

---

## 5. Exemplo de tabela de ligação

```text
alunos  ←→  matriculas  ←→  cursos
```

A tabela `matriculas` resolve o N:N.

### Estrutura típica

```sql
CREATE TABLE matriculas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    aluno_id INT,
    curso_id INT
);
```

---

## 6. Como funciona na prática

### Antes (impossível direto)

```text
Aluno ↔ Curso (N:N direto)
```

### Depois (correto)

```text
Aluno → Matricula ← Curso
```

### Resultado

```text
Um N:N vira dois relacionamentos 1:N
```

---

## 7. Relacionamento 1 para 1 (1:1)

### Exemplo

```text
Esposo ↔ Esposa
```

### Característica

Cada registro se relaciona com apenas um outro.

### Implementação

A chave primária de uma tabela vai para a outra como chave estrangeira.

---

## 8. Relacionamento 1 para muitos (1:N)

### Exemplo

```text
Cliente → Pedidos
```

### Regra

* Um cliente pode ter vários pedidos
* Um pedido pertence a um cliente

### Implementação

```text
A chave primária do lado 1 vai para o lado N como FK
```

---

## 9. Regras de movimentação das chaves 🔑

### 1:1

```text
Escolhe a entidade dominante
PK → FK em outra tabela
```

### 1:N

```text
PK do lado 1 vai para o lado N como FK
```

### N:N

```text
Cria-se uma nova tabela intermediária
```

---

## 10. Tabela de ligação (conceito central do N:N)

### Exemplo completo

```text
Cliente ↔ Compra ↔ Produto
```

### Interpretação

* Cliente faz compras
* Compra contém produtos

### Estrutura

```text
Cliente 1:N Compra
Produto 1:N Compra
```

---

## 11. Exemplo SQL simplificado

```sql
CREATE TABLE compra (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    produto_id INT
);
```

---

## 12. Visão geral dos relacionamentos 🧠

```text
1:1   → chave vai para uma das tabelas
1:N   → chave vai para o lado N
N:N   → cria tabela intermediária
```

---

## 13. Fluxo visual do N:N

```text
Aluno ─────┐
           │
           ▼
      Matricula
           ▲
           │
Curso  ─────┘
```

---

## 14. Resumo final

O modelo relacional garante que:

* dados fiquem organizados;
* relações sejam consistentes;
* não exista redundância desnecessária.

Principal regra:

```text
N:N sempre vira uma tabela intermediária
```
