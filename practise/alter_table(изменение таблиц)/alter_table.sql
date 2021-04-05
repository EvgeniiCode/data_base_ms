--create database alert_test;
--use alert_test;
--drop table test_al;

-- создадим простую таблицу
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

-- добавим столбец age, чтобы он был заполнен по умолчанию
-- и не было ошибки  для Not Null применим св-во default
alter table test_al
add
age int Not Null
default 18;

select * from test_al
go

-- Чтобы удалить столбец с особым условием применяем
-- удаление свойства

alter table test_al
drop constraint DF__test_al__age__2C3393D0

-- теперь можем удалить столбец
alter table test_al
drop column
age

select * from test_al;
go

-- модифицируем столбец, при сведении float к int дробная часть отбрасывается
alter table test_al
alter column [moneys] int Not Null;

select * from test_al;
go
