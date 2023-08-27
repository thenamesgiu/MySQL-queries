drop database if exists Produtos;  -- Remove o banco de dados, caso exista
create database Produtos;          -- Cria o banco de dados
use Produtos;                      -- Seleciona o banco para os próximos comandos

create table Produtos(
	id int primary key auto_increment,
    nome varchar(60), 
    preco_custo decimal(9,2),
    preco_venda decimal (9,2),
    data_cadastro datetime default now(),
    lucro decimal(9,2) as (preco_venda - preco_custo),
    data_de_vencimento datetime as (adddate(data_cadastro, interval 1 month))
);
    
create table Pessoas (
	id int primary key auto_increment, 
	primeiro_nome varchar(20),
	sobre_nome varchar(40),
	nome_completo varchar(60) as (concat(primeiro_nome, " ", sobre_nome)),
	peso decimal(6,3),
	altura decimal(3,2),
	imc decimal(6,3) as (peso/(altura*altura))
);
    
create table Carros(
	id int primary key auto_increment,
	modelo varchar(60),
	alimentacao varchar(60) default "Combustão",
	qtd_portas int default 4,
    vol_max float default 50.5,
    combustivel_medio float default 15.2,
    autonomia float as (vol_max / combustivel_medio)
);

-- Insert carros
insert into Carros (modelo) values ("Delorian");
insert into Carros (modelo) values ("Cadillac Ecto");

insert into Carros (id, modelo, alimentacao, qtd_portas, vol_max) values
	(0, "iCar", "Elétrico", 2, 60.5);

insert into Carros (id, modelo, alimentacao, qtd_portas, combustivel_medio) values
	(123, "Fusca", default, 2, 10.5);

insert into Carros(modelo, qtd_portas) values
	("Variant", 2);
    
select * from carros;

-- Insert pessoas
insert into Pessoas (id, primeiro_nome, sobre_nome, peso, altura) values
	(null, "Carl", "Sagan", 80, 1.7),
	(null, "Charles", "Darwin", 95, 1.8),
	(null, "George", "Boole", 70, 1.9),
	(null, "Carlos", "Chagas", 60, 1.8);

select * from Pessoas;

-- Insert produtos
insert into Produtos (nome, preco_custo, preco_venda) values
	("Lápis", 10.0, 15.5),
	("Oboé", 12.0, 17.0),
	("Xinforinfola", 14.0, 16.8),
	("Pé de cabra", 11.0, 18.2);

select * from produtos;