-- DML
-- INSERT
-- SELECT

USE [db_classificados]
Go


INSERT INTO Usuarios ( 
	Nome, Login, Senha
)
VALUES
('Milton Tomé da Silva','Milton','123456'), 
('Maria Cleres de Freitas da Silva','Cleres','12%%g#eee122'),
('Lethicya da Silva Lopes','Lethicya','abcde'),
('Cynthia Cassullo Amparo','Cynthia','LGKT127'),
('Guilherme Lopes Alves','Guilherme','xyz123'),
('Vinicius Cassullo Amparo', 'Vinicius','efgh897')

SELECT * FROM Usuarios
SELECT * FROM Usuarios WHERE Id_Usuario = 3
SELECT * FROM Usuarios WHERE Login = 'Cynthia'


INSERT INTO Categorias (
	Descricao
)
VALUES
('Cama, Mesa e Banho'),
('Móveis')

SELECT * FROM Categorias
SELECT * FROM Categorias WHERE Id_Categoria = 1

INSERT INTO Anuncio (
	Descricao, Preco, Contato, FK_Categoria, FK_Usuario
)
VALUES
('Travesseiro','60.39','(19) 3951-6299',1,3),
('Lençol','15.59','(12) 3532-6329',1,2),
('Toalha de Banho','45.90','(11) 99506-8983',1,4),
('Escrivaninha','110.89','(81) 8764-5579',2,5),
('Cadeira','50','(11) 94875-1632',2,5),
('Travesseiro','60.39','(19) 3951-6299',1,3)

SELECT * FROM Anuncio
SELECT * FROM Anuncio WHERE Id_Anuncio = 3


SELECT U.Nome, A.Descricao
FROM Anuncio A 
RIGHT JOIN Usuarios U ON U.Id_Usuario = A.FK_Usuario 


SELECT Descricao, Preco, Contato FROM Anuncio WHERE Descricao IN ('Travesseiro','Cadeira')
SELECT Descricao, Preco, Contato FROM Anuncio WHERE Contato LIKE '%11%' 
SELECT Descricao, Preco, Contato Status FROM Anuncio WHERE Preco BETWEEN '15' AND '50'


SELECT U.Nome, COUNT(*) AS QuantidadeAnuncios FROM Anuncio AS A
INNER JOIN Usuarios AS U ON A.FK_Usuario = U.Id_Usuario 
GROUP BY U.Nome

SELECT AVG(A.Preco) AS MediaPreco FROM Anuncio AS A

SELECT U.Nome, A.Descricao, SUM(A.Preco) AS SomaPreco FROM Anuncio AS A
INNER JOIN Usuarios U ON A.FK_Usuario = U.Id_Usuario
GROUP BY U.Nome, A.Descricao 