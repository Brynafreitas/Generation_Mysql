create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
marca varchar (255) not null,
produto varchar (255) not null,
preco decimal (8,2) not null,
cor varchar (255) not null,
primary key (id)
);

insert into tb_produtos (marca, produto, preco, cor) values ("zara", "blazer", 550.00, "preto");
insert into tb_produtos (marca, produto, preco, cor) values ("zara", "calça", 250.00, "azul clara");
insert into tb_produtos (marca, produto, preco, cor) values ("zara", "camisa", 100.00, "branca");
insert into tb_produtos (marca, produto, preco, cor) values ("zara", "trench coat", 600.00, "verde militar");
insert into tb_produtos (marca, produto, preco, cor) values ("zara", "bota", 200.00, "preto");
insert into tb_produtos (marca, produto, preco, cor) values ("zara", "bolsa", 150.00, "animal print vaca");
insert into tb_produtos (marca, produto, preco, cor) values ("zara", "cachecol", 70.00, "cinza");
insert into tb_produtos (marca, produto, preco, cor) values ("zara", "cropped", 100.00, "animal print zebra");

select * from tb_produtos where preco >500;
select * from tb_produtos where preco <500;

update tb_produtos set produto = "camisa polo" where id=5;
update tb_produtos set preco = 150.00 where id=5;