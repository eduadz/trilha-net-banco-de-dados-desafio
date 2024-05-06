-- Selecionar database
use Filmes;

-- 1 - Buscar o nome e ano dos filmes
select Nome, Ano 
from Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano
from Filmes
order by ano ASC;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome, Ano, Duracao
from Filmes
where Nome = 'de volta para o futuro';

-- 4 - Buscar os filmes lançados em 1997
select Nome, Ano, Duracao
from Filmes
where ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select Nome, Ano, Duracao
from Filmes
where ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome, Ano, Duracao
from Filmes
where duracao > 100 and duracao < 150
order by duracao ASC;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, count(*) as Quantidade
from Filmes
group by Ano
order by Quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome
from Atores
where Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome
from atores
where Genero = 'F'
order by PrimeiroNome ASC;

-- 10 - Buscar o nome do filme e o gênero
SELECT filmes.nome AS Nome, generos.genero AS Genero
FROM filmes
INNER JOIN filmesgenero ON filmes.id = filmesgenero.idfilme
INNER JOIN generos ON filmesgenero.idgenero = generos.id;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT filmes.nome AS Nome, generos.genero AS Genero
FROM filmes
INNER JOIN filmesgenero ON filmes.id = filmesgenero.idfilme
INNER JOIN generos ON filmesgenero.idgenero = generos.id
where Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select filmes.nome as Nome, atores.PrimeiroNome as PrimeiroNome, atores.UltimoNome as UltimoNome, elencofilme.Papel as Papel
from filmes
inner join elencofilme on filmes.id = elencofilme.idFilme
inner join atores on atores.id = elencofilme.idAtor;
