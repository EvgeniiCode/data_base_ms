create database Shops
ON(
	Name = 'ShopDB',
	Filename = 'A:\db.mdf',
	SIZE = 10MB,
	Maxsize = 100MB
)

use Shops;
create table Person(
	user_id int identity Not Null,
	firstname varchar(20) Not Null,
	lastname varchar(20) Null
)
