create database b_farmacia_do_bem;

use b_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
departamento varchar (255) not null,
prescricao boolean not null,
generico boolean not null,
primary key (id)
);

insert into tb_categoria (departamento, prescricao, generico) values ("Beleza e higiene", false, false); -- 1
insert into tb_categoria (departamento, prescricao, generico) values ("Medicamentos", false, true);  -- 2
insert into tb_categoria (departamento, prescricao, generico) values ("Medicamentos", true, false); -- 3
insert into tb_categoria (departamento, prescricao, generico) values ("Mamãe e bebê", false, false); -- 4
insert into tb_categoria (departamento, prescricao, generico) values ("Nutrição", false, false); -- 5

create table tb_produtos(
id bigint auto_increment primary key,
produto varchar (255) not null,
marca varchar (255) not null,
qtdproduto int not null,
valor decimal (8,2) not null,
fk_categoria bigint,
foreign key (fk_categoria) references tb_categoria(id)
);

insert into tb_produtos (produto, marca, qtdproduto, valor, fk_categoria) values ("Espran", "Torrent", 1, 100.00, 3);
insert into tb_produtos (produto, marca, qtdproduto, valor, fk_categoria) values ("Loratadina Xarope", "Cimed", 2, 55.00, 2);
insert into tb_produtos (produto, marca, qtdproduto, valor, fk_categoria) values ("Pomada de assadura", "Hipogloss", 1, 49.00, 4);
insert into tb_produtos (produto, marca, qtdproduto, valor, fk_categoria) values ("Protetor Solar", "La Roche Posay", 1, 90.00, 1);
insert into tb_produtos (produto, marca, qtdproduto, valor, fk_categoria) values ("Suplemento Alimentar Nutren", "Nestlê", 1, 114.50, 5);
insert into tb_produtos (produto, marca, qtdproduto, valor, fk_categoria) values ("Agua termal 300 ml", "La roche Posay", 1, 109.90, 1);
insert into tb_produtos (produto, marca, qtdproduto, valor, fk_categoria) values ("Fralda XXG 60 unidades", "Pampers", 2, 175.90, 4);
insert into tb_produtos (produto, marca, qtdproduto, valor, fk_categoria) values ("Manteiga de cacau", "Ever Care", 1, 2.00, 1);


update tb_produtos set produto = "Batom" where id=8;

select * from tb_categoria;

select * from tb_produtos;

select *from tb_produtos where valor>50;

select *from tb_produtos where valor between 3 and 60;

select *from tb_produtos where produto like "%b%";

select tb_produtos.produto, tb_produtos.marca, tb_produtos.qtdproduto, tb_produtos.valor, tb_categoria.departamento, tb_categoria.prescricao,  tb_categoria.generico
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.fk_categoria;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.fk_categoria where departamento= "Beleza e higiene"; -- para encontrar uma categoria especifica

