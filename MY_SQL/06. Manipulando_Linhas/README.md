# Manipulando Linhas, Tuplas e Registros no MySQL

## Introdução

Depois de criar tabelas e inserir dados, também é importante saber:

* corrigir informações;
* atualizar registros;
* apagar linhas específicas;
* limpar toda a tabela.

Para isso, usamos comandos de manipulação de dados.

---

## 1. Modificando uma linha com UPDATE ✏️

O comando `UPDATE` serve para alterar dados que já existem na tabela.

### Estrutura básica

```sql
UPDATE nome_da_tabela
SET campo = novo_valor
WHERE condicao;
```

---

## 2. Exemplo: alterando um curso

```sql
UPDATE cursos
SET nome = 'HTML5'
WHERE idcurso = 1;
```

### Explicando

* `UPDATE cursos` → escolhe a tabela.
* `SET nome = 'HTML5'` → altera o valor do campo.
* `WHERE idcurso = 1` → escolhe a linha correta.

### Resultado

```text
O curso com ID 1 terá o nome alterado para HTML5
```

---

## 3. Alterando vários campos ao mesmo tempo 🔄

Você pode modificar mais de uma informação em um único comando.

### Exemplo

```sql
UPDATE cursos
SET nome = 'PHP', ano = 2015
WHERE idcurso = 4;
```

### Resultado

```text
Curso de ID 4:
- nome passa a ser PHP
- ano passa a ser 2015
```

---

## 4. Limitando o UPDATE com LIMIT 📌

Em alguns casos, você pode querer garantir que apenas uma linha seja alterada.

### Exemplo

```sql
UPDATE cursos
SET nome = 'Java'
WHERE ano = 2018
LIMIT 1;
```

### O que isso faz?

```text
Mesmo que várias linhas atendam à condição,
apenas 1 será modificada.
```

Isso ajuda a evitar alterações acidentais em massa.

---

## 5. Removendo uma linha com DELETE 🗑️

O comando `DELETE` remove registros específicos.

### Estrutura básica

```sql
DELETE FROM nome_da_tabela
WHERE condicao;
```

---

## 6. Exemplo: apagando um registro por ID

```sql
DELETE FROM cursos
WHERE idcurso = 8;
```

### Resultado

```text
A linha com ID 8 será removida.
```

---

## 7. Removendo por outro critério

Também é possível apagar usando outros campos.

### Exemplo

```sql
DELETE FROM cursos
WHERE ano = 2015;
```

### Resultado

```text
Todos os cursos cadastrados com ano 2015 serão apagados.
```

⚠️ Cuidado: esse comando pode remover várias linhas.

---

## 8. Apagando todos os registros com TRUNCATE ⚠️

Se quiser limpar toda a tabela:

```sql
TRUNCATE TABLE cursos;
```

### O que acontece?

Esse comando:

* remove todas as linhas;
* mantém a estrutura da tabela.

### Visualmente

```text
Antes:
┌────┬─────────┐
│ 1  │ HTML5   │
│ 2  │ Java    │
│ 3  │ Python  │
└────┴─────────┘

Depois do TRUNCATE:
┌────┬─────────┐
│ tabela vazia│
└─────────────┘
```

---

## 9. Diferença entre DELETE e TRUNCATE 🧠

### DELETE

* remove linhas específicas;
* pode usar `WHERE`.

### TRUNCATE

* remove tudo de uma vez;
* não escolhe linhas.

### Resumo rápido

```text
DELETE   → apaga registros específicos
TRUNCATE → limpa toda a tabela
```

---

## 10. Boas práticas

Ao usar UPDATE ou DELETE:

* sempre use `WHERE` quando necessário;
* revise a condição antes de executar;
* use `LIMIT` se houver risco.

Isso evita erros graves no banco.

---

## 11. Resumo final

Com esses comandos, você pode:

* atualizar dados;
* corrigir informações;
* apagar registros;
* limpar tabelas.

Esses recursos são essenciais para manter o banco:

* atualizado;
* organizado;
* confiável.
