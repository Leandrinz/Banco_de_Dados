-- Active: 1769088182955@@localhost@3306@cadastro

# 1. Exercício: Selecionando o nome das mulheres na tabela gafanhotos
SELECT nome from gafanhotos
WHERE sexo = 'F';

# 2. Exercício: Uma lista com todos os dados daqueles que nasceram entre 1/1/2000 e 31/12/2015
SELECT * from gafanhotos
where nascimento BETWEEN '2000/1/1' AND  '2015/12/31';

# 3. Exercício: Lista com nomes dos homes que trabalham como programador
SELECT nome from gafanhotos
where sexo = 'M' AND profissao = 'Programador';

# 4. Exercício: Todas as mulheres que começam com J e nasceram no Brasil
SELECT * from gafanhotos
where sexo = 'F' AND nome LIKE 'J%' AND nacionalidade = 'Brasil';

# 5. Exercício: Lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 kg
SELECT nome, nacionalidade from gafanhotos
WHERE sexo = 'M' AND not nacionalidade = 'Brasil' AND nome LIKE '%Silva%' AND peso < 100;

# 6. Exercício: Maior altura entre os gafanhotos que moram no Brasil
SELECT MAX(altura) from gafanhotos
where sexo = 'M' AND nacionalidade = 'Brasil';

# 7. Exercício: Média de peso dos gafanhotos cadastrados
SELECT AVG(peso) from gafanhotos

# 8. Exercício: Qual o menor peso entre as gafanhotas mulheres que nasceram fora do Brasil e entre 01/JAN/1990 e 31/DEZ/2000
SELECT MIN(peso) from gafanhotos
WHERE sexo = 'F' AND not nacionalidade = 'Brasil' AND nascimento BETWEEN '1990/1/1' AND '2000/12/31';

# 9. Exercício: Quantas gafanhotas mulheres tem mais de 1.90 de altura
SELECT COUNT(*) from gafanhotos
where sexo = 'F' and altura > 1.90;