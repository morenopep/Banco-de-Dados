/*Atividade 2
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 
*/
CREATE DATABASE db_ecommerce;

USE db_ecommerce;

/*Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para 
se trabalhar com o serviço deste ecommerce.
*/
CREATE TABLE produtos (

id_produto int NOT NULL AUTO_INCREMENT,
produto VARCHAR(30) NOT NULL,
marca VARCHAR(30) NOT NULL,
modelo VARCHAR (20) NOT NULL,
cor VARCHAR (20) NOT NULL,
preco real NOT NULL,
PRIMARY KEY (id_produto));

/*Popule esta tabela com até 8 dados;*/
INSERT INTO produtos (produto, marca, modelo, cor, preco) VALUES 
('Tenis','Nike','jordan 2','Vermelho e Preto','950'),
('Tenis', 'Nike','jordan classic','Vemelho','1100' ),
('Tenis','Nike', 'Lebrom Edition Lakers','Amarelo','2000'),
('Tenis','Nike','Kobe Edição do penta','Roxo','5000'),
('Chuteira','Addidas','Paraguai','Azul Violeta','150'),
('Chuteira','Adidas','Edição messi','Azul e vermelho','3500'),
('Bola','Nike','Champions','Preto e branco','3500'),
('T-Shirt','Adidas','Bulls Classica','Vermelho','2900');


/*SELECIONANDO TODA TABELA*/
SELECT * FROM produtos;


/*Faça um select que retorne os produtos com o valor maior do que 500.*/
SELECT * FROM produtos
WHERE preco > 500;

/*Faça um select que retorne os produtos com o valor menor do que 500.*/
SELECT * FROM produtos
WHERE preco < 500;


/*Ao término atualize um dado desta tabela através de uma query de atualização.*/
UPDATE produtos
SET preco = '4500'
WHERE modelo ="jordan classic";