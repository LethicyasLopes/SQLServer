-- DML
-- INSERT
-- SELECT

USE [db_ecommerce]
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


INSERT INTO Pedidos (
	Quantidade, FK_Produtos, FK_Usuario
)
VALUES
(5,1,1),
(8,4,3),
(3,3,5),
(15,1,1)


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
('16/04/2022','Entregue',1),
('30/05/2022','Enviado',2),
('07/06/2022','Em processamento',3)

SELECT * FROM Entrega
SELECT * FROM Entrega WHERE Id_Entrega = 3


SELECT U.Login, P.Id_Pedido AS NumeroPedido, PR.Nome, P.Quantidade, PR.Preco, P.Quantidade * PR.Preco AS Total
FROM Usuarios U 
INNER JOIN Pedidos P ON P.FK_Usuario = U.Id_Usuario
INNER JOIN Produtos PR ON P.FK_Produtos = PR.Id_Produtos

SELECT Logradouro, Cidade, Estado FROM Endereco WHERE Estado IN ('SP','RJ')
SELECT Nome, Preco FROM Produtos WHERE Nome LIKE 'C%' 
SELECT Data_Entrega, Status FROM Entrega WHERE Data_Entrega BETWEEN '16-04-2022' AND '30-05-2022'


SELECT U.Nome, COUNT(*) AS QuantidadePedidos FROM Pedidos AS P
INNER JOIN Usuarios AS U ON P.FK_Usuario = U.Id_Usuario 
GROUP BY U.Nome

SELECT AVG(P.Quantidade) AS MediaQuantidadeVendida FROM Pedidos AS P

SELECT U.Nome, PR.Id_Produtos, PR.Nome, SUM(PR.Preco) AS SomaPreco FROM Produtos AS PR
INNER JOIN Pedidos P ON PR.Id_Produtos = P.FK_Produtos 
INNER JOIN Usuarios U ON P.FK_Usuario = U.Id_Usuario
GROUP BY U.Nome, PR.Id_Produtos, PR.Nome
