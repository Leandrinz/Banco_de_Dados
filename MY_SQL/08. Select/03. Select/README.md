# Obtendo Dados das Tabelas com SELECT (Parte 3)

## Introdução

Além de consultar dados individualmente, o MySQL também permite:

* agrupar registros com características em comum;
* contar quantas ocorrências existem em cada grupo;
* filtrar grupos;
* usar uma consulta dentro de outra.

Esses recursos são muito úteis para relatórios e análises.

---

## 1. Agrupando dados com GROUP BY 📚

O comando `GROUP BY` agrupa registros que possuem o mesmo valor em um campo.

### Diferença para DISTINCT

* `DISTINCT` → apenas remove repetições.
* `GROUP BY` → junta os registros semelhantes em grupos.

---

## 2. Exemplo básico de agrupamento

```sql
SELECT nacionalidade
FROM pessoas
GROUP BY nacionalidade;
```

### Resultado

```text
Brasil
Portugal
Japão
```

### O que aconteceu?

As pessoas com a mesma nacionalidade foram agrupadas.

---

## 3. Agrupando e contando ocorrências 🔢

Uma das maiores utilidades do `GROUP BY` é combinar com funções de agregação.

### Exemplo

```sql
SELECT nacionalidade, COUNT(nome)
FROM pessoas
GROUP BY nacionalidade;
```

### Resultado possível

```text
Brasil    → 10 pessoas
Japão     → 3 pessoas
Portugal  → 5 pessoas
```

### Explicando

* `nacionalidade` → campo usado para agrupar.
* `COUNT(nome)` → conta quantas pessoas há em cada grupo.

---

## 4. Filtrando grupos com HAVING 🎯

O `HAVING` serve para aplicar condições depois do agrupamento.

### Estrutura

```sql
SELECT campo, COUNT(*)
FROM tabela
GROUP BY campo
HAVING condicao;
```

---

## 5. Exemplo com HAVING

```sql
SELECT carga, COUNT(nome)
FROM cursos
GROUP BY carga
HAVING COUNT(nome) > 3;
```

### Resultado

```text
Mostra apenas cargas horárias que aparecem mais de 3 vezes
```

---

## 6. Regra importante do HAVING ⚠️

O `HAVING` deve ser usado para filtrar:

* o campo agrupado;
* ou resultados de funções agregadas.

---

### Exemplo correto

```sql
SELECT ano, COUNT(nome)
FROM cursos
GROUP BY ano
HAVING ano > 2012;
```

### Por que está certo?

Porque:

* agrupou por `ano`;
* filtrou usando `ano`.

---

### Exemplo incorreto

```sql
SELECT ano, COUNT(nome)
FROM cursos
GROUP BY ano
HAVING totaulas > 10;
```

### Problema

```text
Você agrupou por ano,
mas tentou filtrar por outro campo sem agregação.
```

Isso pode causar erro ou comportamento inesperado.

---

## 7. Consultas dentro de consultas (subquery) 🧠

O MySQL permite usar um `SELECT` dentro de outro.

Isso se chama:

```text
Subconsulta (Subquery)
```

Ela é útil quando você precisa:

* comparar com médias;
* buscar limites;
* usar resultados dinâmicos.

---

## 8. Exemplo: comparar com a média

Imagine que você quer mostrar apenas cargas maiores que a média geral.

### Exemplo

```sql
SELECT carga, COUNT(*)
FROM cursos
WHERE ano > 2015
GROUP BY carga
HAVING carga > (
    SELECT AVG(carga)
    FROM cursos
);
```

---

## 9. Entendendo passo a passo 🔍

### Parte interna (subquery)

```sql
SELECT AVG(carga) FROM cursos;
```

Isso calcula:

```text
Média da carga horária de todos os cursos
```

---

### Parte externa

```sql
SELECT carga, COUNT(*)
FROM cursos
WHERE ano > 2015
GROUP BY carga
```

Isso:

* pega cursos após 2015;
* agrupa por carga;
* conta quantos existem.

---

### Condição final

```sql
HAVING carga > média
```

Resultado:

```text
Mostra apenas grupos com carga acima da média geral
```

---

## 10. Fluxo visual do GROUP BY + HAVING

```text
Tabela original
   ↓
Filtrar linhas (WHERE)
   ↓
Agrupar dados (GROUP BY)
   ↓
Contar / somar / calcular
   ↓
Filtrar grupos (HAVING)
   ↓
Resultado final
```

---

## 11. Resumo rápido 📌

```text
GROUP BY → agrupa registros iguais
COUNT    → conta por grupo
HAVING   → filtra grupos
Subquery → SELECT dentro de SELECT
```

---

## 12. Resumo final

Com esses recursos, você consegue:

* agrupar dados semelhantes;
* contar ocorrências;
* filtrar grupos específicos;
* criar consultas mais inteligentes.

Esses comandos tornam o banco mais:

* analítico;
* eficiente;
* profissional.
