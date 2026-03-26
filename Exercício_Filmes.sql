-- Exercício 01 --
SELECT
    Nome,
    Ano
FROM Filmes;

-- Exercício 02 --
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
ORDER BY Ano;
    
-- Exercício 03 --
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- Exercício 04 --
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Ano = 1997;

-- Exercício 05 --
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Ano > 2000;

-- Exercício 06 --
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Exercício 07 --
SELECT 
    Ano,
    COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;

-- Exercício 08 --
SELECT
    PrimeiroNome,
    UltimoNome,
    Genero
FROM Atores
WHERE Genero = 'M';

-- Exercício 09 --
SELECT
    PrimeiroNome,
    UltimoNome,
    Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- Exercício 10 --
SELECT 
    f.Nome AS Filme,
    g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON fg.IdFilme = f.Id
INNER JOIN Generos g ON g.Id = fg.IdGenero;

-- Exercício 11 --
SELECT 
    f.Nome AS Filme,
    g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON fg.IdFilme = f.Id
INNER JOIN Generos g ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério';

-- Exercício 12 --
SELECT 
    f.Nome AS Filme,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON ef.IdFilme = f.Id
INNER JOIN Atores a ON a.Id = ef.IdAtor;
