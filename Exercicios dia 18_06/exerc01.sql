create database db_rh;

use db_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar (255) not null,
funcao varchar(255) not null,
salario decimal(5,2) not null,
setor varchar (255) not null,
primary key (id)
);

alter table tb_funcionarios modify salario decimal(8,2);

insert into tb_funcionarios (nome, funcao, salario, setor) values ("Roberto", "Contador", 2000.00, "Contabilidade");
insert into tb_funcionarios (nome, funcao, salario, setor) values ("Pamela", "Desenvolvedora jr", 5000.00, "TI");
insert into tb_funcionarios (nome, funcao, salario, setor) values ("Cleber", "Atendente", 1500.00, "Customer Sucess");
insert into tb_funcionarios (nome, funcao, salario, setor) values ("Ana", "Atendente", 1500.00, "Customer Sucess");
insert into tb_funcionarios (nome, funcao, salario, setor) values ("Joana", "Scrum Master", 15000.00, "TI");

select * from tb_funcionarios;

select * from tb_funcionarios where salario >2000;
select * from tb_funcionarios where salario <=2000;


update tb_funcionarios set salario = 2500.00 where id=1;
