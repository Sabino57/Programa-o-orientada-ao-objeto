create schema banco;
use banco;

create table produto(
codigo int not null primary key,
nome varchar(50) not null,
marca varchar(50)null,
preco double
);

insert into produto value(1, "TV", "Samsung", 2000.00);

select * from produto;