/*Atividade 2
Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.*/

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
idCategorias int AUTO_INCREMENT NOT NULL,
categoria VARCHAR(20),
tipo decimal (3,2),
tamanho VARCHAR(10),
PRIMARY KEY (idCategorias));

/*Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).*/

CREATE TABLE tb_pizza(
idPizza int AUTO_INCREMENT NOT NULL,
sabor VARCHAR(100),
formaPagamento VARCHAR(10),
bordaRecheada VARCHAR(10),
preco decimal(3,2),
refrigerante VARCHAR(3),
idCategoria int,

PRIMARY KEY (idPizza),
FOREIGN KEY (idCategoria) REFERENCES tb_categorias (idCategorias));


/*Popule esta tabela Categoria com até 5 dados.*/
INSERT INTO tb_categorias(categoria, tipo, tamanho) VALUES
('Pizzas Especiais', 'doce', 'Grande'),
('Pizzas tradicionais', 'salgada', 'Brotinho'),
('Pizzas tradicionais', 'salgada', 'Grande'),
('Pizzas DOCES', 'doce', 'Grande'),
('Pizzas da Casa', 'ambos', 'Grande');

select * from tb_categorias;

/*Popule esta tabela pizza com até 8 dados.*/
INSERT INTO tb_pizza (sabor, formaPagamento, bordaRecheada, preco, refrigerante, idCategoria) VALUES
('Mussarela', 'dinheiro', 'Sim','62.00','sim','3'),
('Calabresa', 'credito', 'sim','59.90','sim','3'),
('Azeitona', 'dinheiro', 'sim','72.00','nao','1'),
('palmito', 'debito', 'nao','29.00','sim','1'),
('tomate', 'debito', 'nao','15.00','sim','3'),
('Milho ', 'credito', 'sim','25.00','nao','5'),
('Brigadeiro', 'dinheiro', 'nao','50.63','nao','4'),
('de banana', 'cheque', 'nao','43.65','nao','4'),
('prestigio', 'debito', 'nao','45.00','sim','4');

select * from tb_pizza;

/*Faça um select que retorne os Produtos com o valor maior do que 45 reais.*/

SELECT * FROM tb_pizza
WHERE valor > 45.00;

/*Faça um select trazendo os Produtos com valor entre 29 e 60 reais.*/
SELECT * FROM tb_pizza
WHERE valor BETWEEN '29.00' AND '60.00';


/*Faça um select utilizando LIKE buscando os Produtos com a letra C.*/
SELECT * FROM tb_pizza
WHERE sabor LIKE "C%";


/*Faça um um select com Inner join entre tabela categoria e pizza.*/

SELECT * FROM td_categorias 
INNER JOIN tb_pizza ON id=idCategoria;


/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).*/
SELECT * FROM tb_categorias 
INNER JOIN tb_pizza ON id=idCategoria
WHERE tipo IN ("doce");