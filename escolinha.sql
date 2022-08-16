create database escolinha;
create table turma(
codigo_turma varchar(20) not null primary key,
nome_turma varchar (255) not null,
idade_turma varchar(20) not null
);

create table professora(
codigo_prof varchar(20) not null primary key,
nome varchar (255) not null,
cod_turma varchar(20) not null,
foreign key (cod_turma)references turma(codigo_turma)
);

create table responsavel(
codigo int not null auto_increment primary key,
nome varchar (255) not null
);

create table alunos(
matricula_aluno int not null primary key auto_increment,
nome varchar (255) not null,
data_nasc date not null,
sexo char (1) not null,
peso float not null,
cod_responsavel int not null,
cod_professora varchar (20) not null,
foreign key (cod_responsavel) references responsavel(codigo_resp),
foreign key (cod_professora) references professora(codigo_prof)
);

insert into turma values 
('M1','Maternal I','2 anos'),
('M2','Maternal II','3 anos'),
('M3','Maternal III','4 anos'),
('P1','Pré I','5 anos'),
('P2','Pré II','6 anos');

insert into responsavel values
('1','Maria'),
('2','Julia'),
('3','João'),
('4','Bernardo'),
('5','Juliana'),
('6','Lorena'),
('7','Leila'),
('8','Rayane'),
('9','Jaime'),
('10','Mateus'),
('11','Mariana'),
('12','Angelica'),
('13','Marcos'),
('14','Socorro'),
('15','Adriana');

insert into professora values
('01M', 'Joana', 'M1'),
('02M', 'Helena', 'M2'),
('03M','Andreia','M3'),
('01P','Clara','P1'),
('02P','Leila','P2');

insert into alunos values
('1','Aline','2015/08/10','F','33','1','02P'),
('2','Liza','2015/05/16','F','31','1','02P'),
('3','Leonardo','2015/06/14','M','32','2','02P'),
('4','Emilia','2015/05/22','F','31','3','02P'),
('5','Lucas','2016/08/28','M','32','3','01P'),
('6','Mateus','2016/08/05','M','29','4','01P'),
('7','Laisa','2016/05/12','F','29','4','01P'),
('8','Carlos','2016/03/10','M','31','4','01P'),
('9','Davi','2016/06/30','M','32','5','01P'),
('10','Eduarda','2017/05/21','F','35','5','03M'),
('11','Noah','2017/08/29','M','28','6','03M'),
('12','Heloisa','2017/08/01','F','29','7','03M'),
('13','Marina','2017/05/18','F','30','7','03M'),
('14','Rodrigo','2017/03/20','M','29','8','03M'),
('15','Yellra','2018/06/29','F','27','8','02M'),
('16','Eduardo','2018/05/22','M','28','9','02M'),
('17','Maximus','2018/08/15','M','27','10','02M'),
('18','Alana','2018/05/27','F','29','10','02M'),
('19','Lucas','2018/08/2','M','29','11','02M'),
('20','Camila','2019/05/25','F','26','12','01M'),
('21','Caio','2019/08/17','M','27','13','01M'),
('22','Paloma','2019/08/05','F','25','14','01M'),
('23','Gabrielle','2019/05/02','F','24','14','01M'),
('24','Bruno','2019/03/12','M','20','15','01M');

select * from turma;
select * from professora;
select * from responsavel;
select * from alunos;

SELECT nome, cod_responsavel FROM alunos WHERE cod_professora ='01M';

