--create database test_limit;
--use test_limit;

-- �������� ������ ������� �� �� ����� ����� ������
create table book(
	id_book int identity primary key,
	names varchar(36) Not Null,
	age int
)

-- �������� ������ ������� � �� ����� ���������� ������
create table book_re
(
	id_book int identity primary key,
	names varchar(30),
	age int,
	author varchar(30) Null
)

insert into book
values
('Django', 32),
('Tom', 33),
('Rom', 64)

select names, age from book

-- ���������� �� ������ ������� ������ �� ������
insert into book_re
(names, age)
select names, age from book

select * from book_re