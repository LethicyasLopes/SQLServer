-- DML
-- INSERT
-- SELECT

USE [db_marketplace]
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
('Enxoval'),
('Livro Infantil')

SELECT * FROM Categorias
SELECT * FROM Categorias WHERE Id_Categoria = 1

INSERT INTO Produtos (
	Nome, Preco,FK_Categoria
)
VALUES
('Cobertor','54.20',1),
('Cobre leito','39.90',1),
('Fronha','15.45',1),
('Dom Quixote das Crianças','25',2)

SELECT * FROM Produtos
SELECT * FROM Produtos WHERE Id_Produtos = 4

INSERT INTO TipoNegocio (
	Descricao
)
VALUES
('Compra'),
('Venda')

SELECT * FROM TipoNegocio
SELECT * FROM TipoNegocio WHERE Id_TipoNegocio = 2


INSERT INTO Pedidos (
	Quantidade, FK_Produtos, FK_Usuario, FK_TipoNegocio
)
VALUES
(5,1,1,2),
(8,4,3,1),
(3,3,5,2)


SELECT * FROM Pedidos
SELECT * FROM Pedidos WHERE Id_Pedido = 2

INSERT INTO Endereco (
	Logradouro, Cidade, Estado, FK_Usuario
)
VALUES
('Rua Brasil, 10','São Paulo','SP',3),
('Rua Argentina, 20','Rio de Janeiro','RJ',2),
('Rua Bolivia, 30','Minas Gerais','MG',1)

SELECT * FROM Endereco
SELECT * FROM Endereco WHERE Id_Endereco = 3

INSERT INTO Entrega (
	Data_Entrega, Status, FK_Pedido
)
VALUES
('16/04/2022','Entregue',9),
('30/05/2022','Enviado',10),
('07/06/2022','Em processamento',11)

SELECT * FROM Entrega
SELECT * FROM Entrega WHERE Id_Entrega = 3
