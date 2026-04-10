# Chaves Estrangeiras e JOIN no MySQL

## Introdução

Neste conteúdo, vamos entender como funcionam:

* chaves estrangeiras (Foreign Key);
* integridade referencial;
* engine InnoDB;
* junções de tabelas (JOIN).

Esses conceitos são essenciais para relacionamentos entre tabelas.

---

## 1. Engine do MySQL ⚙️

Ao criar uma tabela, o MySQL utiliza um motor de armazenamento chamado **engine**.

### O que é engine?

```text
É o "motor" responsável por gerenciar a tabela
```

### Engine padrão

No MySQL, a engine padrão geralmente é:

```text
InnoDB
```

---

## 2. Por que InnoDB é importante?

A InnoDB suporta:

* chaves estrangeiras (FOREIGN KEY);
* transações seguras;
* regras de integridade.

---

## 3. ACID (Regras de transação) 🧠

A InnoDB segue o modelo ACID:

### A - Atomicidade

```text
Ou a operação inteira acontece, ou nada acontece
```

---

### C - Consistência

```text
O banco sai de um estado válido e continua válido após a operação
```

---

### I - Isolamento

```text
Transações simultâneas não interferem entre si
```

---

### D - Durabilidade

```text
Dados salvos permanecem no banco mesmo após falhas
```

---

## 4. Criando chave estrangeira (FOREIGN KEY) 🔗

### Passo 1: criar a coluna

```sql
ALTER TABLE gafanhotos
ADD COLUMN cursopreferido INT;
```

---

### Passo 2: transformar em chave estrangeira

```sql
ALTER TABLE gafanhotos
ADD FOREIGN KEY (cursopreferido)
REFERENCES cursos(idcurso);
```

---

## 5. O que a chave estrangeira faz?

Ela cria uma ligação entre tabelas.

### Exemplo lógico

```text
gafanhotos.cursopreferido → cursos.idcurso
```

---

## 6. Ligando registros entre tabelas

### Exemplo

```sql
UPDATE gafanhotos
SET cursopreferido = 6
WHERE id = 1;
```

### Interpretação

```text
O gafanhoto de ID 1 agora prefere o curso 6
```

---

## 7. Integridade referencial ⚠️

Depois de criar uma FK, o banco protege os dados.

### Exemplo de proteção

```sql
DELETE FROM cursos
WHERE idcurso = 6;
```

### O que pode acontecer?

```text
Erro se houver gafanhotos ligados ao curso 6
```

### Regra

```text
Não é possível apagar um registro que está sendo usado como referência
```

---

## 8. O que acontece sem relação?

Se o curso não estiver ligado a ninguém:

```sql
DELETE FROM cursos
WHERE idcurso = 10;
```

### Resultado

```text
O curso é apagado normalmente
```

---

## 9. JOIN (junção de tabelas) 🔄

Após criar relações, surge um problema:

```text
O SELECT mostra apenas IDs, não nomes
```

### Solução

Usamos JOIN para combinar tabelas.

---

## 10. INNER JOIN 🤝

Mostra apenas registros que possuem relação.

### Exemplo

```sql
SELECT g.nome, g.cursopreferido, c.nome, c.ano
FROM gafanhotos g
JOIN cursos c
ON c.idcurso = g.cursopreferido;
```

### Resultado

```text
Apenas gafanhotos com curso associado
```

---

## 11. LEFT OUTER JOIN ⬅️

Mostra todos os registros da tabela da esquerda.

### Exemplo

```sql
SELECT g.nome, g.cursopreferido, c.nome, c.ano
FROM gafanhotos g
LEFT JOIN cursos c
ON c.idcurso = g.cursopreferido;
```

### Resultado

```text
Todos os gafanhotos aparecem
(inclusive os sem curso)
```

---

## 12. RIGHT OUTER JOIN ➡️

Mostra todos os registros da tabela da direita.

### Exemplo

```sql
SELECT g.nome, g.cursopreferido, c.nome, c.ano
FROM gafanhotos g
RIGHT JOIN cursos c
ON c.idcurso = g.cursopreferido;
```

### Resultado

```text
Todos os cursos aparecem
(inclusive os sem alunos)
```

---

## 13. Diferença entre JOINs 🧠

```text
INNER JOIN → só relações existentes
LEFT JOIN  → tudo da esquerda
RIGHT JOIN → tudo da direita
```

---

## 14. Fluxo visual do relacionamento

```text
gafanhotos ──── cursopreferido ──── cursos
```

---

## 15. Resumo final

Com chaves estrangeiras e JOIN, você consegue:

* criar relações entre tabelas;
* garantir integridade dos dados;
* evitar inconsistências;
* juntar informações de várias tabelas.

Esses conceitos são fundamentais para bancos relacionais profissionais.
