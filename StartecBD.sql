-- Tabela da temperatura --

create table sb_temp_reg (
idlinha int not null auto_increment primary key,
dia date not null,
hora time not null,
temperatura int,
sensor varchar (10)
) default charset = utf8;

select * from temp_reg;

insert into temp_reg (dia, hora, temperatura, sensor) values
('2019-03-01','12:00:00',36,'Hall'),
('2019-03-01','12:00:00',43,'Cozinha'),
('2019-03-01','12:15:00',34,'Hall'),
('2019-03-01','12:15:00',41,'Cozinha');

drop table sb_temp_reg;

-- Tabela da Conta --

create table contas (
idconta int primary key auto_increment,
empr_nome varchar (20) not null,
qntsensor int,
cnpj int not null,
responsavel varchar (30),
tabela varchar (15)
);

select * from contas;

insert into contas (empr_nome, qntsensor, cnpj, responsavel, tabela) values
('StarbuckPaulista',2,1920020198,'Engravatado da Silva','sb_temp_reg'),
('SafraPaulista',5,1930193015,'Segurança da Frente','sf_temp_reg');

drop table contas;