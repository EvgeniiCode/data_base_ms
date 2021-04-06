--create database test_limit;
--use test_limit;

create table users(
	id_us int identity primary key,
	name varchar(20) Null,
	age int Not Null,
	money_us float Not Null,
	result as (age * money_us)
);

insert into users
values
('tt', 10, 100),
('dd', 33, 11),
('ll', 33, 11),
('hh', 33, 11)

-- выбереме первые две строки
select top 2 
	* 
from 
	users;


-- выберем все значения отсортированные по вычисляемому столбцу
-- хотя стоит значения первых два, но with ties вытягивает все значения
-- с одинаковой ценой
select top 2 with ties
	*
from
	users
order by result;

-- уберём одинаковые поля
select distinct 
	age 
from 
	users
