-- DDL
-- CREATE
-- ALTER
-- DROP


--CREATE DATABASE db_redesocial 
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


CREATE TABLE Endereco(
Id_Endereco INT PRIMARY KEY IDENTITY NOT NULL,
Logradouro VARCHAR(100) NOT NULL,
Cidade VARCHAR(100) NOT NULL,
Estado VARCHAR(50) NOT NULL,
FK_Usuario INT NOT NULL,
FOREIGN KEY (FK_Usuario) REFERENCES Usuarios (Id_Usuario)
)
GO

CREATE TABLE Postagem(
Id INT PRIMARY KEY IDENTITY NOT NULL,
Titulo VARCHAR(50) NOT NULL,
Descricao VARCHAR(100) NOT NULL,
FK_Usuario INT NOT NULL,
FK_Categoria INT NOT NULL,
FOREIGN KEY (FK_Usuario) REFERENCES Usuarios (Id_Usuario),
FOREIGN KEY (FK_Categoria) REFERENCES Categorias (Id_Categoria)

)
GO

