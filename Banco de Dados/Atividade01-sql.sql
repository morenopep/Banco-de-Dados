/*Atividade 1
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionários desta empresa. 
*/
CREATE DATABASE db_rh;

USE db_rh;

/*Crie uma tabela de funcionários e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários 
para se trabalhar com o serviço deste RH.*/
CREATE TABLE funcionarios (

id int NOT NULL AUTO_INCREMENT,
nome VARCHAR(20) NOT NULL,
sobrenome VARCHAR(20) NOT NULL,
idade int NOT NULL,
endereco VARCHAR (50) NOT NULL,
secao VARCHAR (20) NOT NULL,
soldo real NOT NULL,
PRIMARY KEY (id));

/*Popule esta tabela com até 5 dados;*/
INSERT INTO funcionarios (nome, sobrenome, idade, endereco, secao, soldo) VALUES 
('Pedro','Estevao','24','rua quebrada da esquina, 25','DA','2000'),
('Carol','Santana','23','rua andradina','DSTI','1000'),
('Ikeda','China','35','rua Vila isabel','TI','3520'),
('julio','antonio','45','rua onde eu to, 25','DPD','4000'),
('nina','givig','21','rua sqljava, 1991','ASTI','1000');


/*SELECIONANDO TODA TABELA*/
SELECT * FROM funcionarios;


/*Faça um select que retorne os funcionários com o salário maior do que 2000.*/
SELECT * FROM funcionarios
WHERE soldo>2000;

/*Faça um select que retorne os funcionários com o salário menor do que 2000.*/
SELECT * FROM funcionarios
WHERE soldo<2000;


SET SQL_SAFE_UPDATES = 0;

/*Ao término atualize um dado desta tabela através de uma query de atualização.*/
UPDATE funcionarios
SET soldo = '4000'
WHERE nome ="nina";