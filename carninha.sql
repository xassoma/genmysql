create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias(
id_categorias int auto_increment,
tipo_animal varchar(30),
idade_animal int,
sexo_animal varchar(1),
primary key(id_categorias)
);

insert into tb_categorias(tipo_animal, idade_animal, sexo_animal) 
values('boi', 3, 'M');
insert into tb_categorias(tipo_animal, idade_animal, sexo_animal) 
values('vaca', 5, 'F');
insert into tb_categorias(tipo_animal, idade_animal, sexo_animal) 
values('frango', 1, 'M');
insert into tb_categorias(tipo_animal, idade_animal, sexo_animal) 
values('cabra', 3, 'F');
insert into tb_categorias(tipo_animal, idade_animal, sexo_animal) 
values('porco', 1, 'M');

create table tb_produtos(
id_produtos int auto_increment,
corte varchar(30),
peso varchar(10),
valor double,
tipo_embalagem varchar(10),
validade date,
categoria_id int,
primary key(id_produtos),
foreign key(categoria_id) references tb_categorias(id_categorias)
);

insert into tb_produtos(corte, peso, valor, tipo_embalagem, validade, categoria_id) 
values('Coxão mole', '1k 500g', 42, 'ecologica', '2023-02-01', 1);
insert into tb_produtos(corte, peso, valor, tipo_embalagem, validade, categoria_id) 
values('Coxa e sobrecoxa', '2kg', 30, 'plástico', '2023-01-23', 3);
insert into tb_produtos(corte, peso, valor, tipo_embalagem, validade, categoria_id) 
values('Ubre', '1k 300g', 34,'ecologica', '2023-01-26', 2);
insert into tb_produtos(corte, peso, valor, tipo_embalagem, validade, categoria_id) 
values('Costelinha', '2k 500g', 62, 'plástico', '2023-01-24', 5);
insert into tb_produtos(corte, peso, valor, tipo_embalagem, validade, categoria_id) 
values('Coxa', '500g', 24, 'ecologica', '2023-01-27', 4);
insert into tb_produtos(corte, peso, valor, tipo_embalagem, validade, categoria_id) 
values('Coxinha da asa', '2k 100g', 28, 'ecologica', '2023-01-28', 3);
insert into tb_produtos(corte, peso, valor, tipo_embalagem, validade, categoria_id) 
values('Picanha', '1k 200g', 120, 'ecologica', '2023-02-01', 1);
insert into tb_produtos(corte, peso, valor, tipo_embalagem, validade, categoria_id) 
values('Contra filé', '1k 800g', 80, 'ecologica', '2023-02-05', 2);
insert into tb_produtos(corte, peso, valor, tipo_embalagem, validade, categoria_id) 
values('pururuca', '2k 100g', 46, 'plástico', '2023-01-27', 5);

select * from tb_produtos where valor > 50;

select * from tb_produtos where valor >= 50 and valor <= 150;

select * from tb_produtos where corte like '%c%';

select * from tb_produtos as p inner join tb_categorias as c 
on p.categoria_id = c.id_categorias;

select * from tb_produtos as p inner join tb_categorias as c 
on p.categoria_id = c.id_categorias where id_categorias = 5;