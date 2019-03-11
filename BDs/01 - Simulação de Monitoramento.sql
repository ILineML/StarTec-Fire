create database Arduino;
use Arduino;

create table Monitoramento (
idLinha int primary key,
dia varchar(40),
hora varchar(40),
temperatura varchar(40),
lugar varchar(40),
grau varchar(40)
);

select * from Monitoramento;

insert into Monitoramento values
(01,'09-03-2019','12:00',25,'escritório','ambiente'),
(02,'09-03-2019','12:10',30,'escritório','ambiente+'),
(03,'09-03-2019','12:20',35,'escritório','suspeito'),
(04,'09-03-2019','12:30',40,'escritório','suspeito+'),
(05,'09-03-2019','12:40',45,'escritório','suspeito++'),
(06,'09-03-2019','12:50',50,'escritório','aviso para checagem'),
(07,'09-03-2019','13:00',55,'escritório','aviso: possível incêndio'),
(08,'09-03-2019','13:10',60,'escritório','aviso: possível incêndio'),
(09,'09-03-2019','13:20',65,'escritório','alerta de incêndio'),
(10,'09-03-2019','13:30',70,'escritório','alerta de incêndio');

drop table Monitoramento;

create table Monitoramento (
idLinha int primary key,
dia varchar(40),
hora varchar(40),
temperatura varchar(40),
lugar varchar(40),
grau varchar(40)
);

insert into Monitoramento values
(01,'09-03-2019','12:00',25,'escritório','ambiente'),
(02,'09-03-2019','12:10',30,'escritório','ambiente+'),
(03,'09-03-2019','12:20',35,'escritório','suspeito'),
(04,'09-03-2019','12:30',40,'escritório','suspeito+'),
(05,'09-03-2019','12:40',45,'escritório','suspeito++'),
(06,'09-03-2019','12:50',50,'escritório','aviso para checagem'),
(07,'09-03-2019','13:00',55,'escritório','aviso: possível incêndio'),
(08,'09-03-2019','13:10',60,'escritório','aviso: possível incêndio'),
(09,'09-03-2019','13:20',65,'escritório','alerta de incêndio'),
(10,'09-03-2019','13:30',70,'escritório','alerta de incêndio');

select * from Monitoramento;


