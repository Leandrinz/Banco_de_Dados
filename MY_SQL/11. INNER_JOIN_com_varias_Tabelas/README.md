# INNER JOIN com Múltiplas Tabelas (Relacionamento N:N)

## Introdução

Quando temos um relacionamento **muitos para muitos (N:N)**, não conseguimos conectar duas tabelas diretamente.

Por isso, usamos uma **tabela intermediária (tabela de ligação)** para representar esse relacionamento.

Neste material, vamos ver como isso funciona na prática com `INNER JOIN` envolvendo várias tabelas.

---

## 1. Relembrando a cardinalidade N:N 🧠

### Exemplo:

```text
Gafanhotos ↔ Cursos
```

### Regra:

* Um gafanhoto pode fazer vários cursos
* Um curso pode ter vários gafanhotos

### Solução:

```text
Criar uma tabela intermediária
```

---

## 2. Criando a tabela de ligação 🔗

Essa tabela representa o relacionamento entre as duas entidades.

### Exemplo

```sql
CREATE TABLE gafanhoto_assiste_curso (
    id INT NOT NULL AUTO_INCREMENT,
    data DATE,
    idgafanhoto INT,
    idcurso INT,

    PRIMARY KEY (id),

    FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),
    FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)
) DEFAULT CHARSET = utf8;
```

### O que essa tabela faz?

```text
guarda quem assistiu qual curso e em qual data
```

---

## 3. Inserindo dados na tabela de ligação 📌

### Exemplo

```sql
INSERT INTO gafanhoto_assiste_curso VALUES
(DEFAULT, '2014-03-01', 1, 2);
```

### Interpretação

```text
O gafanhoto de ID 1 assistiu o curso de ID 2 em 01/03/2014
```

---

## 4. O problema do N:N sem JOIN

Se fizermos apenas SELECT nas tabelas separadas:

```text
gafanhotos → mostra nomes
cursos     → mostra cursos
```

Mas não conseguimos ver a relação entre eles diretamente.

---

## 5. Solução: INNER JOIN com múltiplas tabelas 🤝

Usamos JOIN em cadeia para unir as três tabelas.

---

## 6. Exemplo completo de JOIN

```sql
SELECT g.nome, c.nome
FROM gafanhotos g
JOIN gafanhoto_assiste_curso a
    ON g.id = a.idgafanhoto
JOIN cursos c
    ON c.idcurso = a.idcurso;
```

---

## 7. Entendendo passo a passo 🔍

### Passo 1

```sql
gafanhotos (g)
```

Seleciona os alunos.

---

### Passo 2

```sql
JOIN gafanhoto_assiste_curso (a)
ON g.id = a.idgafanhoto
```

Liga o aluno às matrículas.

---

### Passo 3

```sql
JOIN cursos (c)
ON c.idcurso = a.idcurso
```

Liga a matrícula ao curso.

---

## 8. Resultado final 📊

```text
Aluno       → Curso
João        → HTML5
Maria       → PHP
Pedro       → Java
```

---

## 9. Estrutura visual do relacionamento

```text
gafanhotos
     │
     │  (idgafanhoto)
     ▼
gafanhoto_assiste_curso
     ▲
     │  (idcurso)
     │
cursos
```

---

## 10. Por que usamos tabela intermediária? 🧠

Porque ela permite:

* representar N:N corretamente;
* evitar duplicação de dados;
* manter integridade do banco;
* facilitar consultas com JOIN.

---

## 11. Resumo final 📌

```text
N:N → vira tabela intermediária
INNER JOIN → conecta todas as tabelas
```

Com isso, conseguimos:

* relacionar alunos e cursos;
* consultar dados combinados;
* estruturar bancos profissionais.
