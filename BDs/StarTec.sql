CREATE TABLE tbEMPRESA(
idEMP int primary key identity,
EMPRESA varchar(60) not null,
CNPJ char(18),
qtdANDAR int not null,
qtdSENSOR int not null,
qtdFUNC int not null,
CEO varchar(60) not null);

CREATE TABLE tbMONITORAMENTO(
ID int primary key identity,
DATA_MONI DATE not null,
HORA_MONI TIME not null,
NUM_SENSOR int not null,
TEMPERATURA DECIMAL(5,2) not null,
AMBIENTE varchar(40) not null,
EMPRESA int, foreign key(EMPRESA) references tbEMPRESA(idEMP),
Risco varchar(30) not null);

CREATE TABLE tbFUNC(
idFUNC int primary key identity,
NOME VARCHAR(80) not null,
EMP_FUNC varchar(60) not null,
FUNCAO varchar(50) not null,
ANDAR_TRAB int not null);

CREATE TABLE tbEVACUACAO(
idEVA int primary key identity,
NOME_FUNC int, foreign key(NOME_FUNC) references tbFUNC(idFUNC),
STATUS varchar(30) not null,
ANDAR int not null);

ALTER TABLE tbFUNC ALTER COLUMN EMP_FUNC int;
ALTER TABLE tbFUNC ADD foreign key(EMP_FUNC) references tbEMPRESA(idEMP);

alter TABLE tbEVACUACAO add EMPRESA INT not null;
alter TABLE tbEVACUACAO add foreign key(EMPRESA) references tbEMPRESA(idEMP);

INSERT INTO tbEMPRESA values
('StarBucks', '123.123.123/1234-12', 3, 4, 3, 'Marcos Oliveira'),
('Riachuelo', '123.321.453/5656-13', 4, 4, 5, 'Rodrigo Castro');

INSERT into tbFUNC values
('Fabiana Allencar', 1, 'Atendente', 1),
('Matheus Maia', 1, 'Garçom', 2),
('Renata Ingrata', 1, 'Atendente', 3),
('Luciano Hermano', 2, 'Vendedor', 2),
('Rita Souza', 2, 'Vendedora', 2),
('Renan Simão', 2, 'Atendente', 1),
('Camila', 2, 'Atendente', 3),
('Silvia da Silva', 2, 'Diretora', 4),

INSERT INTO tbMONITORAMENTO values
('2019-03-16', '13:15:10', 1, 32.2, 1, 'Normal'),
('2019-03-16', '13:15:10', 2, 32.4, 1, 'Normal'),
('2019-03-16', '13:15:10', 3, 32.1, 1, 'Normal'),
('2019-03-16', '13:15:25', 1, 32.3, 1, 'Normal'),
('2019-03-16', '13:15:25', 2, 32.5, 1, 'Normal'),
('2019-03-16', '13:15:25', 3, 32.2, 1, 'Normal'),
('2019-03-17', '16:20:35', 1, 33.3, 2, 'Normal'),
('2019-03-17', '16:20:35', 2, 36.3, 2, 'Suspeito'),
('2019-03-17', '16:20:35', 3, 33.3, 2, 'Normal'),
('2019-03-17', '16:20:35', 4, 32.3, 2, 'Normal'),
('2019-03-17', '16:20:50', 1, 33.3, 2, 'Normal'),
('2019-03-17', '16:20:50', 2, 38.0, 2, 'Perigo'),
('2019-03-17', '16:20:50', 3, 33.2, 2, 'Normal'),
('2019-03-17', '16:20:50', 5, 31.9, 2, 'Normal'));

INSERT INTO tbEVACUACAO values
(6, 'Livre', 1),
(3, 'Preso(a)', 2),
(4, 'Preso(a)',2),
(8, 'Preso(a)',3),
(9, 'Preso(a)',4);
