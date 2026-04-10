# Obtendo Dados das Tabelas com SELECT (Parte 1)

## Introdução

Depois de criar, alterar e inserir dados em uma tabela, chega a etapa mais importante: consultar as informações.

No MySQL, usamos o comando `SELECT` para buscar dados.

Com ele, podemos:

* visualizar registros;
* escolher colunas específicas;
* ordenar resultados;
* aplicar filtros;
* combinar condições.

Este guia mostra os principais usos do `SELECT` de forma prática e didática.

---

## 1. Selecionando todos os dados 📋

Para exibir todas as colunas de uma tabela:

```sql
SELECT * FROM cursos;
```

### Explicando

* `SELECT` → comando de consulta.
* `*` → significa “todas as colunas”.
* `FROM cursos` → tabela consultada.

### Resultado

```text
Mostra todos os registros da tabela cursos
```

---

## 2. Selecionando apenas uma coluna 🎯

Se quiser ver apenas um campo:

```sql
SELECT nome FROM cursos;
```

### Resultado

```text
Mostra apenas os nomes dos cursos
```

---

## 3. Selecionando colunas específicas

Você também pode escolher algumas colunas.

### Exemplo

```sql
SELECT nome, carga, ano FROM cursos;
```

### Resultado

```text
Exibe apenas:
- nome
- carga
- ano
```

Isso deixa a consulta mais limpa.

---

## 4. Ordenando em ordem crescente ⬆️

Para organizar os resultados em ordem crescente:

```sql
SELECT * FROM cursos
ORDER BY nome;
```

### O que acontece?

```text
A → Z
ou
menor → maior
```

### Exemplo

Se ordenar por idade:

```text
18, 20, 22, 30...
```

---

## 5. Ordenando em ordem decrescente ⬇️

Para inverter a ordem:

```sql
SELECT * FROM cursos
ORDER BY nome DESC;
```

### Resultado

```text
Z → A
ou
maior → menor
```

---

## 6. Filtrando linhas com WHERE 🔎

O `WHERE` permite mostrar apenas registros que atendam a uma condição.

### Exemplo

```sql
SELECT ano, nome, carga
FROM cursos
WHERE ano = 2016
ORDER BY ano, carga, nome;
```

### Explicando

* seleciona apenas os campos desejados;
* mostra somente cursos de 2016;
* organiza por:

  * ano;
  * carga;
  * nome.

### Fluxo visual

```text
Tabela cursos
   ↓
Filtrar ano = 2016
   ↓
Selecionar colunas desejadas
   ↓
Ordenar resultado
```

---

## 7. Selecionando intervalos com BETWEEN 📏

O `BETWEEN` serve para buscar valores dentro de um intervalo.

### Exemplo

```sql
SELECT * FROM cursos
WHERE carga BETWEEN 20 AND 30
ORDER BY carga;
```

### Resultado

```text
Mostra cursos com carga entre 20 e 30
```

### Importante

O intervalo inclui os extremos:

```text
20 e 30 também entram
```

---

## 8. Selecionando valores específicos com IN 📌

O `IN` permite buscar vários valores de uma vez.

### Exemplo

```sql
SELECT nome FROM cursos
WHERE ano IN (2014, 2016)
ORDER BY nome;
```

### Resultado

```text
Mostra cursos dos anos:
- 2014
- 2016
```

É como dizer:

```text
"Mostre os registros que tenham este OU aquele valor"
```

---

## 9. Combinando condições com operadores lógicos 🧠

Podemos usar:

* `AND` → ambas as condições precisam ser verdadeiras.
* `OR` → uma das condições basta.

### Exemplo com AND

```sql
SELECT * FROM cursos
WHERE carga > 35 AND totaulas < 30
ORDER BY nome;
```

### Resultado

```text
Só mostra cursos que:
- tenham carga maior que 35
E
- tenham total de aulas menor que 30
```

---

## 10. DQL: linguagem de consulta 📚

O comando `SELECT` faz parte da DQL.

### DQL = Data Query Language

É a linguagem usada para consultar dados.

### Exemplos de consulta

```sql
SELECT
FROM
WHERE
ORDER BY
```

### Função

```text
Buscar e organizar informações do banco
```

---

## 11. Resumo final

Com `SELECT`, você pode:

* ver todos os dados;
* escolher colunas;
* ordenar resultados;
* filtrar registros;
* buscar intervalos;
* combinar condições.

Esses recursos tornam a consulta:

* rápida;
* precisa;
* organizada.
