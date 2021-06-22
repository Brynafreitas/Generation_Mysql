create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment primary key,
descricao varchar (255) not null,
ativo boolean not null
);

insert into tb_categoria (descricao, ativo) values ("Frutas", true);
insert into tb_categoria (descricao, ativo) values ("Verduras", true);
insert into tb_categoria (descricao, ativo) values ("Legumes", true);
insert into tb_categoria (descricao, ativo) values ("Doces", true);
insert into tb_categoria (descricao, ativo) values ("Outros", true);

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar (255) not null,
preco decimal (8,2) not null,
qtdproduto int not null,
produtofresco boolean,
fk_categoria bigint,
foreign key (fk_categoria) references tb_categoria(id)
);

insert into tb_produtos (nome, preco, qtdproduto, produtofresco, fk_categoria) values ("Chucu", 6.00, 2, true, 2);
insert into tb_produtos (nome, preco, qtdproduto, produtofresco, fk_categoria) values ("Banana", 4.00, 1, false, 1);
insert into tb_produtos (nome, preco, qtdproduto, produtofresco, fk_categoria) values ("Morango", 60.00, 10, true, 1);
insert into tb_produtos (nome, preco, qtdproduto, produtofresco, fk_categoria) values ("Alface", 2.00, 1, true, 3);
insert into tb_produtos (nome, preco, qtdproduto, produtofresco, fk_categoria) values ("Pé de moça", 8.00, 4, true, 4);
insert into tb_produtos (nome, preco, qtdproduto, produtofresco, fk_categoria) values ("Fanta Laranja", 70.00, 7, false, 5);
insert into tb_produtos (nome, preco, qtdproduto, produtofresco, fk_categoria) values ("Limão Caviar", 90.90, 2, true, 1);
insert into tb_produtos (nome, preco, qtdproduto, produtofresco, fk_categoria) values ("Abobora", 12.00, 2, true, 3);

select * from tb_categoria;

select * from tb_produtos;

select * from tb_produtos where preco >50;

select *from tb_produtos where preco between 3 and 60;

select *from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.fk_categoria ;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.fk_categoria where descricao = "frutas";
