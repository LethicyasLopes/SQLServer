-- DML
-- INSERT
-- SELECT

USE [db_redesocial]
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
('Família'),
('Viagem')

SELECT * FROM Categorias
SELECT * FROM Categorias WHERE Id_Categoria = 1


INSERT INTO Endereco (
	Logradouro, Cidade, Estado, FK_Usuario
)
VALUES
('Rua Brasil, 10','São Paulo','SP',3),
('Rua Argentina, 20','Rio de Janeiro','RJ',2),
('Rua Bolivia, 30','Minas Gerais','MG',1)

SELECT * FROM Endereco
SELECT * FROM Endereco WHERE Id_Endereco = 3

INSERT INTO Postagem (
	Titulo, Descricao, FK_Usuario, FK_Categoria
)
VALUES
('Amor maior','Família reunida celebrando a vida',3,1),
('Aventuras','Viagem realizada para Machu Picchu!',6,2),
('Conquistas','Graduada no intercâmbio de Stanford',4,2)

SELECT * FROM Postagem
SELECT * FROM Postagem WHERE Id_Postagem = 2
