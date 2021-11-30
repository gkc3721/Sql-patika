create table users(
	id serial primary key,
	username varchar(20),
	email varchar(50),
	age integer )
	
insert into users(username,email,age)
values
	('tester','tester@gmail.com',23)
	
insert into users(username,email,age)
values
	('','gamer@gmail.com',35)
	
select * from users
delete from users
where username is null

alter table users
alter column username
set not null

--her verinin birbirinden farklı olmasını istersek
insert into users(username,email,age)
values
	('tester2','tester2@gmail.com',42)
	
--tabloyu oluştururken unique kelimesini ekleyerek yapılabilir: email varchar(50) unique
--tabloyu oluşturduktan sonra:
alter table users
add unique (email)

select * from users

insert into users(username,email,age)
values('gamer3','gamer@outlook.com',-22)

--age her zaman 0dan büyük olsun kısıtı eklemek için:
alter table users 
add check(age>0)

create table products(
	product_no integer,
	name text,
	price numeric check(price>0),
	discounted_price numeric check (discounted_price>0),
	check(price>discounted_price))
	
insert into products(product_no,name,price,discounted_price)
values(1,'test product',8,5)
