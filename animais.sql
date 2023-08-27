drop database if exists PetShop;  -- Remove o banco de dados, caso exista
create database PetShop;          -- Cria o banco de dados
use PetShop;                      -- Seleciona o banco para os próximos comandos

/* As linhas acima não devem ser executas em serviços online como o sqlite oline*/


create table Animais (
	id					int  				primary key 	auto_increment,
	nome				varchar(50) 		not null,
	nasc				date 				not null,
	peso				decimal(10,2),
	cor					varchar(50)
);


insert into Animais values (null, 'Ágata'			, '2015-04-09', 13.9, 'branco'  );
insert into Animais values (null, 'Félix'			, '2016-06-06', 14.3, 'preto'   );
insert into Animais values (null, 'Tom'				, '2013-02-08', 11.2, 'azul'    );
insert into Animais values (null, 'Garfield'		, '2015-07-06', 17.1, 'laranja' );
insert into Animais values (null, 'Frajola'			, '2013-08-01', 13.7, 'preto'   );
insert into Animais values (null, 'Manda-chuva'		, '2012-02-03', 12.3, 'amarelo' );
insert into Animais values (null, 'Snowball'		, '2014-04-06', 13.2, 'preto'   );
insert into Animais values (null, 'Ágata'			, '2015-08-03', 11.9, 'azul'    );
insert into Animais values (null, 'Ágata'			, '2016-03-04', 18.6, 'roxo'    );
insert into Animais values (null, 'Gato de Botas'	, '2012-12-10', 11.6, 'amarelo' );
insert into Animais values (null, 'Bola de pelo'	, '2020-04-06', 11.6, 'amarelo' );

insert into Animais values (null, 'Milu'			, '2013-02-04', 17.9, 'branco'  );
insert into Animais values (null, 'Pluto'			, '2012-01-03', 12.3, 'amarelo' );
insert into Animais values (null, 'Pateta'			, '2015-05-01', 17.7, 'preto'   );
insert into Animais values (null, 'Snoopy'			, '2013-07-02', 18.2, 'branco'  );
insert into Animais values (null, 'bidu'			, '2012-09-08', 12.4, 'azul'    );
insert into Animais values (null, 'Dum Dum'			, '2015-04-06', 11.2, 'laranja' );
insert into Animais values (null, 'Muttley'			, '2011-02-03', 14.3, 'laranja' );
insert into Animais values (null, 'Scooby'			, '2012-01-02', 19.9, 'marrom'  );
insert into Animais values (null, 'Rufus'			, '2014-04-05', 19.7, 'branco'  );
insert into Animais values (null, 'Costelinha'		, '2016-05-02', 13.4, 'branco'  );
insert into Animais values (null, 'Coragem'			, '2013-07-08', 12.2, 'vermelho');
insert into Animais values (null, 'Jake'			, '2012-02-07', 11.6, 'vermelho');
insert into Animais values (null, 'K900'			, '2012-11-25', 11.6, 'amarelo' );

insert into Animais values (null, 'Jerry'			, '2010-02-04', 06.6, 'laranja' );
insert into Animais values (null, 'Ligeirinho'		, '2011-05-03', 04.4, 'amarelo' );
insert into Animais values (null, 'Mikey'			, '2012-07-01', 02.2, 'preto'   );
insert into Animais values (null, 'Minie'			, '2013-09-03', 03.2, 'preta'   );
insert into Animais values (null, 'Topo Gigio'		, '2016-06-08', 05.5, 'amarelo' );

insert into Animais values (null, 'Bafo de Onça'	, '2016-01-03', 15.5, 'amarelo' );
insert into Animais values (null, 'Susan Murphy'	, '2021-02-08', 03.5, 'vermelho');
insert into Animais values (null, 'Insectosauro'	, '2016-01-10', 35.8, 'amarelo' );
insert into Animais values (null, 'Gallaxhar'   	, '2020-06-07', 05.5, 'azul'    );
insert into Animais values (null, 'Hathaway'    	, '2019-03-08', 85.5, 'roxo'    );

insert into Animais values (null, 'Tutubarão'		, '2010-02-06', 101.9 , 'branca' );
insert into Animais values (null, 'Prof. Pardal'	, '2012-04-04', 1.7   , 'amarelo');
insert into Animais values (null, 'Mobie'			, '2014-05-02', 5069.4, 'branca' );
insert into Animais values (null, 'Batman'			, '2013-07-01', 96.1  , 'preto'  );



-- select * from Animais;

-- select * from Animais where peso < 50;

-- select * from Animais where nasc between '2015-02-01' and '2015-12-31';

-- select * from Animais where cor = 'branco' and peso < 20;

-- select nome, cor, peso from Animais where nome like 'B%';

-- select nome, cor, peso from Animais where cor in ('vermelho', 'amarelo', 'marrom', 'laranja');

-- select nome, cor, nasc, peso from Animais order by nasc desc;

-- select * from Animais where nome like 'C%' and cor != 'branco';

-- select * from Animais where nome like '%ba%';

-- select * from Animais where peso between 14.7 and 28.1;

-- select * from Animais where peso <= 30 and cor in ('amarelo', 'roxo') and nasc > '2012-12-31';

-- select * from Animais where (month(nasc) = 12 and day(nasc) between 22 and 31) or (month(nasc) = 1 and day(nasc) between 1 and 21)

-- select * from Animais where nome like '% %';