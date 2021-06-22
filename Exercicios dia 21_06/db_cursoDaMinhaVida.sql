create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment primary key,
especializacao varchar (255) not null,
periodo varchar (255) not null
);

insert into tb_categoria (especializacao, periodo) values ("Tecnologia", "Noite online");
insert into tb_categoria (especializacao, periodo) values ("Tecnologia", "Online");
insert into tb_categoria (especializacao, periodo) values ("Tecnologia", "Presencial");
insert into tb_categoria (especializacao, periodo) values ("Moda", "Presencial");
insert into tb_categoria (especializacao, periodo) values ("Desenho", "On-line");

create table tb_cursos( 
id bigint auto_increment primary key,
nomecurso varchar (255) not null,
preco decimal (8,2) not null,
prof varchar (255) not null,
notarecomendada int not null,
fk_categoria bigint,
foreign key (fk_categoria) references tb_categoria(id)
);

insert into tb_cursos (nomecurso, preco, prof, notarecomendada, fk_categoria) values ("Ux Design", 500.00, "Rafael Coelho", 5, 1);
insert into tb_cursos (nomecurso, preco, prof, notarecomendada, fk_categoria) values ("Java", 600.00, "Jefferson Itajahy", 5, 3);
insert into tb_cursos (nomecurso, preco, prof, notarecomendada, fk_categoria) values ("Mysql", 200, "Rafael Queiroz", 5, 2);
insert into tb_cursos (nomecurso, preco, prof, notarecomendada, fk_categoria) values ("Desenho Croqui", 40.00, "Agda Manoel", 3, 4);
insert into tb_cursos (nomecurso, preco, prof, notarecomendada, fk_categoria) values ("Desenho Anime", 20, "Luis Henrique", 3, 5);
insert into tb_cursos (nomecurso, preco, prof, notarecomendada, fk_categoria) values ("Front-end", 300.00, "Thiago Lima", 5, 1);
insert into tb_cursos (nomecurso, preco, prof, notarecomendada, fk_categoria) values ("Costura", 150, "Beth Carvavlho", 4, 4);
insert into tb_cursos (nomecurso, preco, prof, notarecomendada, fk_categoria) values ("Devops", 300, "Lucas Cruz", 5, 2);


select * from tb_categoria;

select * from tb_cursos;

select * from tb_cursos where preco >50;
select * from tb_cursos where preco between 3 and 60;
select * from tb_cursos where nomecurso like "%j%";


select * from tb_cursos inner join tb_categoria on tb_categoria.id = tb_cursos.fk_categoria;

select * from tb_cursos inner join tb_categoria on tb_categoria.id = tb_cursos.fk_categoria where especializacao = "Moda";



