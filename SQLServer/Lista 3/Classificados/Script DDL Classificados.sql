-- DDL
-- CREATE
-- ALTER
-- DROP


--CREATE DATABASE db_classificados 
--GO

CREATE TABLE Usuarios(
	Id_Usuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Login VARCHAR(50) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Foto IMAGE NULL
) 
GO


CREATE TABLE Categorias(
	Id_Categoria INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(100)
)
GO

CREATE TABLE Anuncio (
	Id_Anuncio INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	Preco REAL NOT NULL,
	Contato VARCHAR(50) NOT NULL,
	FK_Categoria INT NOT NULL,
	FK_Usuario INT NOT NULL,
	FOREIGN KEY (FK_Categoria) REFERENCES Categorias (Id_Categoria),
	FOREIGN KEY (FK_Usuario) REFERENCES Usuarios (Id_Usuario)
)
GO
