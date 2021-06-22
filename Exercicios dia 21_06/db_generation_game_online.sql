create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment primary key,
elemento varchar(255) not null,
aldeia varchar (255) not null
);

insert into tb_classe(elemento, aldeia) values ("Fogo", "Vila oculta da fogo");
insert into tb_classe(elemento, aldeia) values ("Ar", "Vila do vento");
insert into tb_classe(elemento,aldeia) values ("Terra", "Vila da areia");
insert into tb_classe(elemento, aldeia) values ("Agua", "Vila do mar");
insert into tb_classe(elemento, aldeia) values ("Forca", "Vila do Monstro");

create table tb_personagem(
id bigint auto_increment primary key,
nome varchar (255) not null,
ataque int not null,
defesa int not null,
nivel int not null,
fk_classe bigint,
foreign key (fk_classe) references tb_classe (id)
);

insert into tb_personagem (nome, ataque, defesa, nivel, fk_classe) values ("Arnaldo Antunes", 2000, 5000, 10, 2);
insert into tb_personagem (nome, ataque, defesa, nivel, fk_classe) values ("Aline Teixeira", 4000, 2000, 5, 4);
insert into tb_personagem (nome, ataque, defesa, nivel, fk_classe) values ("Zeldenir", 5000, 5000, 10, 1);
insert into tb_personagem (nome, ataque, defesa, nivel, fk_classe) values ("Joselito", 4000, 6000, 6, 3);
insert into tb_personagem (nome, ataque, defesa, nivel, fk_classe) values ("Leo Stronda", 10000, 5000, 7, 5);
insert into tb_personagem (nome, ataque, defesa, nivel, fk_classe) values ("Boça", 6000, 1000, 8, 3);
insert into tb_personagem (nome, ataque, defesa, nivel, fk_classe) values ("Luiza Mel", 6000, 2000, 7 , 2);
insert into tb_personagem (nome, ataque, defesa, nivel, fk_classe) values ("Pablo Vittar", 10000, 1500, 10, 1);



select * from tb_personagem where ataque >2000;

select * from tb_personagem where defesa between 1000 and 2000;

select *from tb_personagem where nome like "%c%";

select *from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.fk_classe;

select *from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.fk_classe where elemento = "Fogo";

