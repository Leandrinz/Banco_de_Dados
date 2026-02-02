-- Active: 1769088182955@@localhost@3306@cadastro
# 1. Exercício: Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos
SELECT profissao, COUNT(*) from gafanhotos
GROUP BY profissao
ORDER BY COUNT(*) DESC;

# 2. Exercício: Quantos gafanhotos homens e quantas mulheres nasceram após 01/Jan/2005
SELECT sexo, count(sexo) from gafanhotos
WHERE nascimento > '2005/01/01'
GROUP BY sexo
ORDER BY COUNT(sexo) DESC;

# 3. Exercício: Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá. Só nos interessam os países que tiverm mais de 3 gafanhotos com essa nacionalidade
SELECT nacionalidade, count(nacionalidade) from gafanhotos
where nacionalidade != 'Brasil'
GROUP BY nacionalidade
HAVING COUNT(nacionalidade) > 3
ORDER BY COUNT(nacionalidade) DESC;

# 4. Exercício: Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100kg e que estão acima da média de altura de todos os cadastrados
SELECT altura, count(altura) from gafanhotos where peso > 100
GROUP BY altura
HAVING altura > (SELECT avg(altura) from gafanhotos)
ORDER BY altura DESC;