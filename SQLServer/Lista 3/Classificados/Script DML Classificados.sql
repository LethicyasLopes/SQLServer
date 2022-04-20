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
('Escrivaninha','110.89','(81) 8764-5579',2,5)

SELECT * FROM Anuncio
SELECT * FROM Anuncio WHERE Id_Anuncio = 3


