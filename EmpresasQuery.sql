/*
As próximas linhas não devem ser executas em serviços online como o sqlite oline
*/
drop database if exists Empresa;
create database Empresa;
use Empresa;


create table marcas (
	marca_id		int 			auto_increment		primary key,
	nome_marca		varchar(50)		not null,			
	origem			varchar(50)		
);

create table produtos (

	prod_id			int 			auto_increment 		primary key,
	nome_prod		varchar(50)		not null,
	qtd_estoque		int				not null 			default 0,
	estoque_mim		int 			not null			default 0,
	data_fabricacao	timestamp 							default now(),
	perecivel		boolean,
	valor			decimal(10,2),
	
	marca_id		int		references marcas(marca_id)
);

create table fornecedores (
	forn_id			int 			auto_increment 		primary key,	
	nome_forn		varchar(50)		not null,
	email			varchar(50)		
);


create table produto_fornecedor (
	prod_id			int				not null	references produtos(prod_id),
	forn_id			int				not null	references fornecedores(forn_id),
	
	primary key (prod_id, forn_id)
);

insert into fornecedores values (null, 'Los Pollos Hermanos'       ,'frig@pollos.com.mx');
insert into fornecedores values (null, 'Umbrella Corporation'      ,'umbrella@umbrella.com.ca');
insert into fornecedores values (null, 'UAC'                       ,'uac@uac.com.mars.dm');
insert into fornecedores values (null, 'Huey Materiais Escolares'  ,'huey@duck.com.us');
insert into fornecedores values (null, 'Dewey Materiais Escolares' ,'dewey@duck.com.us');
insert into fornecedores values (null, 'Louie Materiais Escolares' ,'louie@duck.com.us');
insert into fornecedores values (null, 'New Informática'           ,'ni@newinf.com.br');
insert into fornecedores values (null, 'Meio Bit TI'               ,'meiobit@bitbit.com.br');
insert into fornecedores values (null, 'Ze Faisca SA'              ,'ze@faisca.com.br');
insert into fornecedores values (null, 'Facens'                    ,'facens@facens.com.br');
insert into fornecedores values (null, 'Linux'                     ,'linux@linux.br');




insert into marcas (marca_id, nome_marca, origem) values (null, 'Faber Castel'	, 'Brasil');
insert into marcas (marca_id, nome_marca, origem) values (null, 'Labra'			, 'Brasil');
insert into marcas (marca_id, nome_marca, origem) values (null, 'TOTVS'  		, 'Brasil');
insert into marcas (marca_id, nome_marca, origem) values (null, 'Multilaser'	, 'Brasil');
insert into marcas (marca_id, nome_marca, origem) values (null, 'ORCACLE'		, 'EUA');
insert into marcas (marca_id, nome_marca, origem) values (null, 'IBM'			, 'EUA');
insert into marcas (marca_id, nome_marca, origem) values (null, 'Microsoft'		, 'EUA');
insert into marcas (marca_id, nome_marca, origem) values (null, 'HP'			, 'EUA');
insert into marcas (marca_id, nome_marca, origem) values (null, 'Apple'			, 'EUA');
insert into marcas (marca_id, nome_marca, origem) values (null, 'SAP'			, 'Alemanha');
insert into marcas (marca_id, nome_marca, origem) values (null, 'Lenovo'		, 'China');
insert into marcas (marca_id, nome_marca, origem) values (null, 'ASUS'			, 'Taiwan');
insert into marcas (marca_id, nome_marca, origem) values (null, 'AOC'			, 'Taiwan');
insert into marcas (marca_id, nome_marca, origem) values (null, 'LG'			, 'Corea do Sul');




insert into produtos values (null, 'lapis'				, 4502, 100, '2016-3-3', false, 002.5, 1);
insert into produtos values (null, 'lapis'				, 8800, 100, '2015-5-5', false, 014.0, 2);
insert into produtos values (null, 'borracha'			, 2907, 100, '2013-7-8', false, 004.2, 1);
insert into produtos values (null, 'borracha'			, 5408, 100, '2015-8-2', false, 002.0, 2);
insert into produtos values (null, 'caderno'			, 7004, 100, '2016-3-4', false, 022.5, 1);
insert into produtos values (null, 'caneta'				, 8030, 100, '2013-2-4', false, 011.0, 1);
insert into produtos values (null, 'ERP'				, 0060, 100, '2016-5-7', false, 937.5, 3);
insert into produtos values (null, 'ERP'				, 3070, 100, '2014-6-5', false, 472.0, 4);
insert into produtos values (null, 'ERP'				, 2083, 100, '2015-8-4', false, 252.0, 5);
insert into produtos values (null, 'Windows'			, 5040, 100, '2012-9-2', false, 532.0, 7);
insert into produtos values (null, 'IOS'				, 6020, 100, '2014-3-3', false, 756.5, 9);
insert into produtos values (null, 'teclado'			, 7030, 100, '2016-5-8', false, 412.5, 4);
insert into produtos values (null, 'teclado'			, 0024, 100, '2013-4-7', false, 172.5, 11);
insert into produtos values (null, 'teclado'			, 9070, 100, '2015-5-4', false, 192.0, 8);
insert into produtos values (null, 'mouse'				, 1303, 100, '2016-7-3', false, 142.0, 4);
insert into produtos values (null, 'mouse'				, 3050, 100, '2013-9-2', false, 122.5, 8);
insert into produtos values (null, 'mouse'				, 0007, 100, '2012-3-7', false, 152.0, 7);
insert into produtos values (null, 'Pendrive'			, 6070, 100, '2014-5-6', false, 172.0, 4);
insert into produtos values (null, 'CD'					, 8080, 100, '2015-6-4', false, 012.5, 4);
insert into produtos values (null, 'Monitor'			, 9040, 100, '2016-5-2', false, 332.0, 8);
insert into produtos values (null, 'Monitor'			, 0001, 100, '2013-3-6', false, 172.0, 11);
insert into produtos values (null, 'Monitor'			, 2300, 100, '2015-2-5', false, 312.5, 14);
insert into produtos values (null, 'Monitor'			, 6620, 100, '2014-3-3', false, 272.0, 6);
insert into produtos values (null, 'Joystick'			, 0063, 100, '2014-5-7', false, 152.0, 4);
insert into produtos values (null, 'Módulo de memória'	, 7230, 100, '2013-6-8', false, 512.5, 6);
insert into produtos values (null, 'Módulo de memória'	, 9032, 100, '2013-7-8', false, 612.0, 12);
insert into produtos values (null, 'Processador'		, 4509, 100, '2016-8-6', false, 282.5, 6);
insert into produtos values (null, 'Placa de Vídeo'		, 2408, 100, '2015-3-5', false, 152.0, 6);
insert into produtos values (null, 'Placa de Vídeo'		, 0066, 100, '2012-2-3', false, 612.5, 13);
insert into produtos values (null, 'Fonte de Energia'	, 9044, 100, '2013-5-2', false, 112.0, 4);
insert into produtos values (null, 'Fonte de Energia'	, 4054, 100, '2014-7-3', false, 012.5, 8);
insert into produtos values (null, 'HD externo'			, 0400, 100, '2016-8-4', false, 412.5, 14);
insert into produtos values (null, 'mesa'				, 0240, 100, '2014-4-8', false, 632.5, null);
insert into produtos values (null, 'cadeira'			, 0490, 100, '2012-3-7', false, 342.0, null);
insert into produtos values (null, 'rack'				, 0030, 100, '2013-2-6', false, 262.0, null);
insert into produtos values (null, 'armario'			, 0404, 100, '2012-5-4', false, 412.5, null);
insert into produtos values (null, 'pera'				, 0069, 100, '2014-7-6', true , 612.0, null);
insert into produtos values (null, 'maça'				, 0020, 100, '2015-3-5', true , 716.8, null);
insert into produtos values (null, 'banana'				, 0081, 100, '2016-5-8', true , 512.0, null);


insert into produto_fornecedor values (1,1);
insert into produto_fornecedor values (4,1);

#Gere um relatório informando quantos produtos estão cadastrados
SELECT COUNT(*) AS 'total de produtos' FROM produtos;

#Gere um relatório informando o preço médio dos produtos
SELECT AVG(produtos.valor) AS 'preco medio' from produtos;

#Selecione a média dos preços dos produtos em 2 grupos: perecíveis e não perecíveis.
SELECT perecivel, AVG(valor) AS media_precos FROM produtos GROUP BY perecivel;

#Selecione a média dos preços dos produtos agrupados pelo nome do produto.
SELECT produtos.nome_prod, AVG(produtos.valor) AS "média de preço" from produtos group by produtos.nome_prod;

#Selecione a média dos preços e total em estoque dos produtos.
SELECT AVG(valor) AS "Média de preço",  SUM(qtd_estoque) AS "Total em estoque" FROM produtos;

#(Desafio) Selecione o nome, marca e quantidade em estoque do produto mais caro.
SELECT produtos.nome_prod as "Nome do produto", marcas.nome_marca AS "Nome da marca", produtos.qtd_estoque AS "Total em estoque" from produtos inner join marcas on produtos.marca_id = marcas.marca_id WHERE produtos.valor = (SELECT MAX(valor) from produtos);

# (Desafio) Selecione os produtos com preço acima da média
SELECT produtos.nome_prod FROM produtos WHERE produtos.valor > (SELECT AVG(produtos.valor) FROM produtos);

# (Desafio) Selecione a quantidade de produtos de cada nacionalidade.
SELECT marcas.origem, COUNT(produtos.prod_id) AS "qtd. de produtos" from marcas inner join produtos on marcas.marca_id = produtos.marca_id group by marcas.origem;

#Gere um relatório informando quantos produtos cada marca possui.
SELECT marcas.nome_marca, COUNT(produtos.prod_id) AS "qtd. de produtos" from marcas inner join produtos on marcas.marca_id = produtos.marca_id group by marcas.nome_marca;

#Gere um relatório informando o preço médio dos produtos de cada marca.
SELECT marcas.nome_marca, AVG(produtos.prod_id) AS "preço médio" from marcas inner join produtos on marcas.marca_id = produtos.marca_id group by marcas.nome_marca;

#Selecione a média dos preços e total em estoque dos produtos agrupados por marca.
SELECT marcas.nome_marca, AVG(produtos.prod_id) AS "preço médio", SUM(produtos.qtd_estoque) AS "total em estoque" from marcas inner join produtos on marcas.marca_id = produtos.marca_id group by marcas.nome_marca;

