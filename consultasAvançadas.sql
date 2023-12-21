--insercao de dados na tabela Autores
INSERT INTO Autores (AutorID, Nome, Nacionalidade) VALUES
(1, 'Autor 1', 'Brasil'),
(2, 'Autor 2', 'EUA'),
(3, 'Autor 3', 'França');

--insercao de dados na tabela Livros
INSERT INTO Livros (LivroID, Titulo, AnoPublicacao, AutorID) VALUES
(1, 'Livro 1', 2000, 1),
(2, 'Livro 2', 2005, 1),
(3, 'Livro 3', 2010, 2),
(4, 'Livro 4', 2015, 2),
(5, 'Livro 5', 2020, 3);


--consulta simples para listar todos os autores e seus livros associados
SELECT Autores.Nome AS 'Nome do Autor', Livros.Titulo AS 'Título do Livro'
FROM Autores
JOIN Livros ON Autores.AutorID = Livros.AutorID;

--consulta com INNER JOIN para listar detalhes dos livros e seus autores correspondentes
SELECT Autores.Nome AS 'Nome do Autor', Livros.Titulo AS 'Título do Livro'
FROM Autores
INNER JOIN Livros ON Autores.AutorID = Livros.AutorID;

--consulta com left join para exibir todos os autores, incluindo informacoes dos livros, se disponiveis
SELECT Autores.Nome AS 'Nome do Autor', Livros.Titulo AS 'Título do Livro'
FROM Autores
LEFT JOIN Livros ON Autores.AutorID = Livros.AutorID;

--consulta que lista autores e seus livros, restrita a nacionalidade especifica
SELECT Autores.Nome AS 'Nome do Autor', Livros.Titulo AS 'Título do Livro'
FROM Autores
LEFT JOIN Livros ON Autores.AutorID = Livros.AutorID
WHERE Autores.Nacionalidade = 'Brasil';

--consulta que conta quantos livros cada autor escreveu
SELECT Autores.Nome AS 'Nome do Autor', COUNT(Livros.LivroID) AS 'Total de Livros'
FROM Autores
LEFT JOIN Livros ON Autores.AutorID = Livros.AutorID
GROUP BY Autores.Nome;