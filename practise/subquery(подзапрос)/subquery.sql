--create database sub_query
--use sub_query
--drop table product

-- При создании бд можем создать вычисляемый столбце, если указываем
-- persisted, то столбец сохранится в физической памяти, иначе он будет каждый раз перерасчитываться
create table product
(	
	[id_product] int identity primary key,
	[name_pr] varchar(36) Not Null,
	[price] float,
	[count_pr] int,
	[result_cost] as (Convert(int, [price]) * [count_pr]) persisted,
);

-- добавим данные в таблицу
insert into product
values
('1', 11.5, 2),
('2', 12.3, 4),
('3', 100, 5);

select * from product;

-- добавим вычисляемый столбец после создания таблицы
alter table product 
add 
test_ins as (price * 10)


-- Вычисляемый столбец можно создать прямо в коде
select 
	pr.name_pr, (pr.result_cost + 1) as temp
from
	product as pr




