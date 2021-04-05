--create database alert_test;
--use alert_test;
--drop table test_al;

-- �������� ������� �������
create table test_al(
	id_alert int identity primary key,
	names char(36),
	moneys float Null
);

insert into test_al
values
('kolan', 200.1),
('tolan', 400);

select * from test_al
go

-- ������� ������� age, ����� �� ��� �������� �� ���������
-- � �� ���� ������  ��� Not Null �������� ��-�� default
alter table test_al
add
age int Not Null
default 18;

select * from test_al
go

-- ����� ������� ������� � ������ �������� ���������
-- �������� ��������

alter table test_al
drop constraint DF__test_al__age__2C3393D0

-- ������ ����� ������� �������
alter table test_al
drop column
age

select * from test_al;
go

-- ������������ �������, ��� �������� float � int ������� ����� �������������
alter table test_al
alter column [moneys] int Not Null;

select * from test_al;
go
