--create database sub_query
--use sub_query
--drop table product

-- ��� �������� �� ����� ������� ����������� �������, ���� ���������
-- persisted, �� ������� ���������� � ���������� ������, ����� �� ����� ������ ��� �����������������
create table product
(	
	[id_product] int identity primary key,
	[name_pr] varchar(36) Not Null,
	[price] float,
	[count_pr] int,
	[result_cost] as (Convert(int, [price]) * [count_pr]) persisted,
);

-- ������� ������ � �������
insert into product
values
('1', 11.5, 2),
('2', 12.3, 4),
('3', 100, 5);

select * from product;

-- ������� ����������� ������� ����� �������� �������
alter table product 
add 
test_ins as (price * 10)


-- ����������� ������� ����� ������� ����� � ����
select 
	pr.name_pr, (pr.result_cost + 1) as temp
from
	product as pr




