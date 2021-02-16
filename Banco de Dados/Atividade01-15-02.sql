/*Atividade 1
Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game
O sistema trabalhará com 2 tabelas tb_personagem e tb_classe. Siga exatamente esse passo a passo:
Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes do Cargos para se trabalhar com o serviço desse game Online.
Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_cargo nesta tabela).*/


CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe (
idClasse int AUTO_INCREMENT NOT NULL,
poderAtaque double,
pontosVida double,
skill VARCHAR(40),
PRIMARY KEY(idClasse));


CREATE TABLE tb_personagens (
idPersonagens int AUTO_INCREMENT NOT NULL,
nomePersonagem VARCHAR(50),
nivel int(100),
sexo char(1),
questRealizadas int(200),
fama VARCHAR(10),
classeId int NOT NULL,
PRIMARY KEY (idPersonagens),
FOREIGN KEY (classeId) REFERENCES tb_classe (idClasse));


/*Popule esta tabela classe com até 5 dados.*/
INSERT INTO tb_classe (poderAtaque,pontosVida,skill) VALUES 
('4000','2000','tank'),
('2200','2000','Arqueiro'),
('1500','3800','magia'),
('1900','2400','Mercenario'),
('1350','3200','Curandeiro');

select * from tb_classe;

/*Popule esta tabela personagem com até 8 dados.*/
INSERT INTO tb_personagens (nomePersonagem,nivel,sexo,questRealizadas,fama,classeId) VALUES
('pedro','3','M','5','junior', '1'),
('estevao','75','M','80','pleno', '2'),
('pires','38','F','43','junior', '3'),
('maguinho','20','M','34','junior', '4'),
('avatar','100','F','99','pleno', '5'),
('luffy','59','M','68','pleno', '5'),
('nami','30','F','35','junior', '2'),
('Zoro','75','M','89','pleno', '3');

select * from tb_personagens;

/*Faça um select que retorne os funcionários com o poder de ataque maior do que 2000.*/

SELECT idPersonagens, nomePersonagem, nivel, sexo, questRealizadas ,idClasse,poderAtaque FROM tb_personagens 
INNER JOIN tb_classe  ON (classeId= idClasse)
WHERE poderAtaque > 2000;

/*Faça um select trazendo os funcionários com poder de defesa entre 1000 e 2000.*/
SELECT * FROM tb_personagens 
INNER JOIN tb_classe ON classeId = idClasse
WHERE pontosVida BETWEEN '1000' AND '2000'
ORDER BY pontosVida ASC;


/*Faça um select utilizando LIKE buscando os personagens com a letra C.*/
SELECT nomePersonagem FROM tb_personagens 
INNER JOIN tb_classe ON classeId = idClasse
WHERE nomePersonagem LIKE "C%";

/*Faça um um select com Inner join entre tabela classe e personagem.*/
SELECT * FROM tb_personagens 
INNER JOIN tb_classe ON classeId = idClasse
ORDER BY nomePersonagem;


/*Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros).*/

SELECT * FROM tb_personagens p
INNER JOIN tb_classe ON classeId=idClasse
WHERE skill IN ("Arqueiro")
