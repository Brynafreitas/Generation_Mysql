create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment primary key,
setor varchar (255) not null,
estoque boolean not null
);

insert into tb_categoria(setor, estoque) values ("Cama, Mesa e Banho", false);
insert into tb_categoria(setor, estoque) values ("Climatização e ventilação", true);
insert into tb_categoria(setor, estoque) values ("Iluminação", true);
insert into tb_categoria(setor, estoque) values ("Materias de construção", true);
insert into tb_categoria(setor, estoque) values ("Madeiras", true);

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar (255) not null,
valor decimal (8,2) not null,
garantiaprod varchar (255) not null,
unidadeMedida varchar (255) not null,
fk_categoria bigint,
foreign key (fk_categoria) references tb_categoria (id)
);

insert into tb_produtos (nome, valor, garantiaprod, unidadeMedida, fk_categoria) values ("Ar Condicionado Split 12000BTUs Frio Top Equation", 1459.90, "12 meses", 1, 2);
insert into tb_produtos (nome, valor, garantiaprod, unidadeMedida, fk_categoria) values ("Jogo De Cama King 300 Fios Bud Vision - Buddemeyer Cinza", 619.40, "3 meses", 1, 1);
insert into tb_produtos (nome, valor, garantiaprod, unidadeMedida, fk_categoria) values ("Plafon 1 Lâmpada Branco Vidro Clean LLUM Bronzearte", 16.99, "12 meses", 1, 3);
insert into tb_produtos (nome, valor, garantiaprod, unidadeMedida, fk_categoria) values ("Pallet Liso Madeira Pinus Aparelhado 100x120cm Settis", 119.90, "3 meses", 1, 5);
insert into tb_produtos (nome, valor, garantiaprod, unidadeMedida, fk_categoria) values ("Prego com Cabeça Aço Zincado 3,4X82,80mm 18X36 Granel", 2, "Sem garantia", 4, 4);
insert into tb_produtos (nome, valor, garantiaprod, unidadeMedida, fk_categoria) values ("Folha de Lixa para Drywall Grão 120 Dexter", 5.38, "Sem garantia", 2, 4);
insert into tb_produtos (nome, valor, garantiaprod, unidadeMedida, fk_categoria) values ("Espelho Liso Reflexivo 4mm Leo e Barreto", 318.00, "3 meses", 2, 5);
insert into tb_produtos (nome, valor, garantiaprod, unidadeMedida, fk_categoria) values ("Kit Com 6 Peças Edredom Soft Casa Dona Casal Branco", 135.99, "3 meses", 1, 1);


select * from tb_produtos where valor >50;
select * from tb_produtos where valor between 3 and 60;
select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.fk_categoria;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.fk_categoria where setor = "Cama, Mesa e banho";

