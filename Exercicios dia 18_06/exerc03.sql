create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar (255) not null,
matricula decimal (5,2)  not null,
nota decimal (5,2) not null,
turno varchar (255) not null,
primary key (id)
);

insert into tb_estudantes (nome, matricula, nota, turno) values ("Luis Henrique", 1472, 8.5, "manhã");
insert into tb_estudantes (nome, matricula, nota, turno) values ("Gustavo", 1566, 9.0, "manhã");
insert into tb_estudantes (nome, matricula, nota, turno) values ("Délis Silva", 1644, 6.0, "tarde");
insert into tb_estudantes (nome, matricula, nota, turno) values ("Bruno Souza", 2552, 6.0, "tarde");
insert into tb_estudantes (nome, matricula, nota, turno) values ("Talita Santos", 7254, 9.5, "tarde");
insert into tb_estudantes (nome, matricula, nota, turno) values ("André Santos", 7412, 5.0, "manhã");
insert into tb_estudantes (nome, matricula, nota, turno) values ("Bianca Barbosa", 7239, 8.5, "tarde");
insert into tb_estudantes (nome, matricula, nota, turno) values ("Aline Dias", 4180, 6.5, "manhã");

alter table tb_estudantes modify  matricula int;

select * from tb_estudantes;

select * from tb_estudantes where nota >7;
select * from tb_estudantes where nota <7;

update tb_estudantes set nota = 9.0 where id=4;

