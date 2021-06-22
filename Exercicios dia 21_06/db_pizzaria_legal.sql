create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipoPizza varchar (255) not null,
tamanho varchar (255) not null,
borda varchar (255) not null,
primary key (id)
);

insert into tb_categoria (tipoPizza, tamanho, borda) values ("Vegetariana", "Grande", "Borda recheada");
insert into tb_categoria (tipoPizza, tamanho, borda) values ("Doce", "Média", "Borda sem recheio");
insert into tb_categoria (tipoPizza, tamanho, borda) values ("Vegetariana", "broto", "Borda sem recheio");
insert into tb_categoria (tipoPizza, tamanho, borda) values ("Doce", "Grande", "Borda sem recheio");
insert into tb_categoria (tipoPizza, tamanho, borda) values ("Com carne", "Grande", "Borda recheada");

create table tb_pizza(
id bigint auto_increment,
sabor varchar (255) not null,
bebida varchar (255) not null,
preco decimal (8,2)not null,
sobremesa varchar (255) not null,
salgados varchar (255) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (sabor, bebida, preco, sobremesa, salgados, categoria_id) values ("Calabresa", "Coca-cola", 45.00, "sem sobremesa", "sem salgados", 5);
insert into tb_pizza (sabor, bebida, preco, sobremesa, salgados, categoria_id) values ("Brocolis", "suco de laranja", 60.00, "bolo de pote", "sem salgados", 1);
insert into tb_pizza (sabor, bebida, preco, sobremesa, salgados, categoria_id) values ("Frango com Catupiry", "Fanta laranja", 50.00, "sem sobremesa", "sem salgados", 5);
insert into tb_pizza (sabor, bebida, preco, sobremesa, salgados, categoria_id) values ("Prestigio", "suco de uva", 45.00, "sem sobremesa", "Esfiha", 2);
insert into tb_pizza (sabor, bebida, preco, sobremesa, salgados, categoria_id) values ("Portuguesa", "Coca-cola", 50.00, "açai", "sem salgados", 5);
insert into tb_pizza (sabor, bebida, preco, sobremesa, salgados, categoria_id) values ("Morango e chocolate", "Dolly guaraná", 55.00, "sem sobremesa", "sem salgados", 4);
insert into tb_pizza (sabor, bebida, preco, sobremesa, salgados, categoria_id) values ("Marguerita", "Coca-cola", 30.00, "sem sobremesa", "sem salgados", 3);
insert into tb_pizza (sabor, bebida, preco, sobremesa, salgados, categoria_id) values ("Milho", "Fanta-uva", 25.00, "sem sobremesa", "sem salgados", 3);

select *from tb_categoria;

select *from tb_pizza;

select *from tb_pizza where preco >45.0;

select *from tb_produtos where preco between 29 and 60;

select *from tb_produtos where nome like "%c%";

select tb_pizza.sabor, tb_pizza.preco, tb_pizza.sobremesa, tb_pizza.salgados, tb_categoria.tipoPizza, tb_categoria.tamanho, tb_categoria.borda
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;


