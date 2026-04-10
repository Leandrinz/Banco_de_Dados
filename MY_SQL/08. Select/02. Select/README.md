# Obtendo Dados das Tabelas com SELECT (Parte 2)

## Introdução

Além dos filtros básicos, o comando `SELECT` também permite:

* buscar por nomes específicos;
* encontrar padrões em textos;
* evitar repetições;
* fazer cálculos automáticos.

Esses recursos tornam as consultas mais inteligentes e úteis no dia a dia.

---

## 1. Seleção por valor exato 🎯

Se você quiser encontrar um registro com um valor específico, use `WHERE`.

### Exemplo

```sql
SELECT * FROM cursos
WHERE nome = 'PHP';
```

### O que isso faz?

```text
Mostra todas as linhas em que o campo nome é igual a PHP
```

### Resultado possível

```text
ID | nome | ano
4  | PHP  | 2015
```

---

## 2. Buscando padrões com LIKE 🔎

O operador `LIKE` é usado para buscar textos que sigam um padrão.

É muito útil para:

* nomes;
* cidades;
* países;
* qualquer texto.

---

## 3. Começando com uma letra

Se quiser buscar nomes que começam com uma letra:

```sql
SELECT * FROM cursos
WHERE nome LIKE 'P%';
```

### Explicando

* `P` → letra inicial desejada.
* `%` → representa qualquer sequência de caracteres.

### Resultado

```text
PHP
Python
Photoshop
```

---

## 4. Wildcards (% e _) 🧩

### `%` → qualquer quantidade de caracteres

#### Termina com uma letra

```sql
SELECT * FROM cursos
WHERE nome LIKE '%P';
```

Resultado:

```text
Mostra nomes que terminam com P
```

---

#### Contém uma letra em qualquer posição

```sql
SELECT * FROM cursos
WHERE nome LIKE '%P%';
```

Resultado:

```text
Mostra nomes que possuem P em qualquer lugar
```

Exemplo:

```text
PHP
Photoshop
JavaScript
```

---

### `_` → exige exatamente um caractere

Diferente do `%`, o `_` representa apenas um caractere obrigatório.

### Exemplo

```sql
SELECT * FROM cursos
WHERE nome LIKE 'P___';
```

### Resultado

```text
Busca nomes com:
- letra P no início
- exatamente mais 3 caracteres
```

---

## 5. Evitando repetição com DISTINCT 📌

O `DISTINCT` serve para mostrar valores únicos, sem repetir.

### Exemplo

```sql
SELECT DISTINCT nacionalidade FROM pessoas;
```

### O que acontece?

Mesmo que várias pessoas tenham a mesma nacionalidade:

```text
Brasil
Brasil
Japão
Japão
Portugal
```

O resultado será:

```text
Brasil
Japão
Portugal
```

### Muito útil para:

* listar países;
* categorias;
* cidades;
* tipos de produto.

---

## 6. Funções de agregação 📊

As funções de agregação servem para resumir dados.

Elas fazem:

* contagem;
* soma;
* média;
* maior valor;
* menor valor.

---

## 7. COUNT: contar registros

Conta quantas linhas atendem à condição.

### Exemplo

```sql
SELECT COUNT(*) FROM cursos
WHERE carga > 40;
```

### Resultado

```text
6
```

Significa:

```text
Existem 6 cursos com carga maior que 40
```

---

## 8. MAX: maior valor

Mostra o maior valor de um campo.

### Exemplo

```sql
SELECT MAX(totaulas) FROM cursos;
```

### Resultado

```text
60
```

Significa:

```text
O maior total de aulas é 60
```

---

## 9. MIN: menor valor

Mostra o menor valor.

### Exemplo

```sql
SELECT MIN(totaulas) FROM cursos;
```

### Resultado

```text
10
```

---

## 10. SUM: somatório

Soma todos os valores de uma coluna.

### Exemplo

```sql
SELECT SUM(totaulas) FROM cursos;
```

### Resultado

```text
Soma de todas as aulas cadastradas
```

---

## 11. AVG: média

Calcula a média dos valores.

### Exemplo

```sql
SELECT AVG(totaulas) FROM cursos;
```

### Resultado

```text
Média da quantidade de aulas
```

---

## 12. Resumo visual 🧠

```text
SELECT      → consulta dados
WHERE       → filtra
LIKE        → busca padrões
DISTINCT    → remove repetição
COUNT       → conta
MAX / MIN   → maior / menor
SUM         → soma
AVG         → média
```

---

## 13. Resumo final

Com esses recursos, você consegue:

* buscar nomes específicos;
* encontrar padrões de texto;
* evitar repetições;
* fazer análises rápidas.

Esses comandos tornam suas consultas:

* mais poderosas;
* mais precisas;
* mais profissionais.
