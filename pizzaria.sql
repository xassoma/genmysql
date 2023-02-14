create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id_categorias int auto_increment,
tipo varchar(50),
modo_preparo varchar(50),
primary key(id_categorias)
);

insert into tb_categorias(tipo, modo_preparo) 
values('especial', 'forno a lenha');
insert into tb_categorias(tipo, modo_preparo) 
values('tradicional', 'forno a gás');
insert into tb_categorias(tipo, modo_preparo) 
values('moda da casa', 'forno a lenha + molho especial');
insert into tb_categorias(tipo, modo_preparo) 
values('personalizada', 'a gosto do cliente');

select * from tb_categorias;

create table tb_pizzas(
id_pizzas int auto_increment,
sabor varchar(50),
tamanho varchar(30),
valor double,
borda boolean,
adicional boolean,
tipo_adicional varchar(50),
categoria_id int,
primary key(id_pizzas),
foreign key (categoria_id) references tb_categorias(id_categorias)
);

insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_adicional, categoria_id)
values('Portuguesa', 'médio', 40.00, true, false, '', 1);
insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_adicional, categoria_id)
values('Nordestina', 'grande', 80.00, false, true, 'bacon', 2);
insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_adicional, categoria_id)
values('Chocolate', 'pequena', 30.00, true, false, '', 3);
insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_adicional, categoria_id)
values('Portuguesa 2', 'médio', 50.00, false, false, '', 3);
insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_adicional, categoria_id)
values('Frango 1', 'gigante', 160.00, true, true, 'molho especial',  4);
insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_adicional, categoria_id)
values('Calabresa', 'médio', 40.00, false, true, 'frango', 1);
insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_adicional, categoria_id)
values('Carne de sol', 'grande', 80.00, false, false, '', 2);
insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_adicional, categoria_id)
values('4 queijos', 'médio', 40.00, false, true, 'borda especial', 4);
insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_adicional, categoria_id)
values('light', 'grande', 90.00, false, true, 'queijo light', 1);

select * from tb_pizzas;

select * from tb_pizzas where valor > 45;
select * from tb_pizzas where valor >= 50 and valor <= 100;

select * from tb_pizzas where sabor like "%m%";
select * from tb_pizzas where sabor like "%P%";

select * from tb_pizzas inner join tb_categorias 
on tb_pizzas.categoria_id = tb_categorias.id_categorias;

select * from tb_pizzas inner join tb_categorias 
on tb_pizzas.categoria_id = tb_categorias.id_categorias 
where tb_categorias.tipo = 'moda da casa';