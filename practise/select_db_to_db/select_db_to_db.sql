--create database test_limit;
--use test_limit;

-- создадим первую таблицу из неё будем брать данные
create table book(
	id_book int identity primary key,
	names varchar(36) Not Null,
	age int
)

-- создадим вторую таблицу в неё будем записывать данные
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

-- записываем во вторую таблицу данные из первой
insert into book_re
(names, age)
select names, age from book

select * from book_re