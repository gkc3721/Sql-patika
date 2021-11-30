create table <table name> (
column_name data-type  constraint,
column name data_type constraint )

create table author(
	id serial primary key ,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(100),
	birthday date);
	
select * from author
--id'ye birşey girmemize gerek yok çünkü serial veri tipi olarak oluşturduk ve kendi kendine değer atayacak
insert into author(first_name, last_name, email,birthday)
values 
	('Haruki','Murakami','haruki@gmail.com', '1948-11-07'),
	('Onur','Şifalı', 'osifali@gmail.com', '1997-7-6'),
	('Afiyet', 'Adalet', 'afiyet@outlook.com', '1967-9-21');

--author yapısına sahip bir tablo oluşturmak
create table author2 (like author) 


--tabloya başka tablodan veri çekmek
insert into author2 
select * from author
where first_name = 'Onur'

--tabloyu içindekiler ile birlikte yeni bir tablo oluşturmak
create table author3 as
select * from author

drop table if exists author3
drop table author2

--updating a table
update table_name
set column1=value
	column2=value2
where condition

update author 
set first_name='Emrah',
	last_name= 'Gürkan',
	email= 'emrah@gurkan.com',
	birthday= '1980-01-01'
where id = 10;

update author 
set first_name='XXX',
	last_name= 'YYYY'
where first_name like 'A%';

--returning o işlemin yapıldığı satırları getirir
update author
set last_name = 'update'
where first_name= 'XXX'
returning *;

delete from author
where id>11
returning *;

--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), 
--birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
create table employee(
	id integer primary key ,
	name varchar(50) not null,
	email varchar(100),
	birthday date);
	
--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (id, name, email, birthday) values (1, 'Gaven', 'gohern0@walmart.com', null);
insert into employee (id, name, email, birthday) values (2, 'Marion', 'mthomerson1@artisteer.com', '9/5/2013');
insert into employee (id, name, email, birthday) values (3, 'Everard', 'enys2@dailymotion.com', '8/20/1970');
insert into employee (id, name, email, birthday) values (4, 'Gerianna', 'gbillanie3@ibm.com', '3/27/1971');
insert into employee (id, name, email, birthday) values (5, 'Elisabet', 'emitchener4@pbs.org', '11/26/1984');
insert into employee (id, name, email, birthday) values (6, 'Eduard', 'ebrechin5@tripod.com', null);
insert into employee (id, name, email, birthday) values (7, 'Bellina', 'bmckevitt6@over-blog.com', '8/26/1975');
insert into employee (id, name, email, birthday) values (8, 'Carly', 'cwhitehorne7@yolasite.com', '1/22/2008');
insert into employee (id, name, email, birthday) values (9, 'Addison', 'anekrews8@fc2.com', '1/1/1995');
insert into employee (id, name, email, birthday) values (10, 'Gillan', 'gdifrancecshi9@home.pl', '10/30/2015');
insert into employee (id, name, email, birthday) values (11, 'Holly-anne', 'hjellingsa@intel.com', '12/18/1973');
insert into employee (id, name, email, birthday) values (12, 'Bambi', null, '6/7/2003');
insert into employee (id, name, email, birthday) values (13, 'Karoly', 'kmaclurec@skype.com', '6/19/2001');
insert into employee (id, name, email, birthday) values (14, 'Babita', 'bprandyd@tinyurl.com', null);
insert into employee (id, name, email, birthday) values (15, 'Cleon', null, null);
insert into employee (id, name, email, birthday) values (16, 'Bria', 'bscarsbrickf@seesaa.net', '6/16/1964');
insert into employee (id, name, email, birthday) values (17, 'Beaufort', 'bmaseykg@phoca.cz', '5/5/1991');
insert into employee (id, name, email, birthday) values (18, 'Joann', 'jandreassenh@europa.eu', '4/13/1986');
insert into employee (id, name, email, birthday) values (19, 'Brenn', 'borteui@istockphoto.com', '11/8/2011');
insert into employee (id, name, email, birthday) values (20, 'Dore', null, '12/5/2005');
insert into employee (id, name, email, birthday) values (21, 'Sandra', 'sekek@goodreads.com', null);
insert into employee (id, name, email, birthday) values (22, 'Jeffy', 'jgaulerl@narod.ru', null);
insert into employee (id, name, email, birthday) values (23, 'Tish', 'tgoodwellm@pinterest.com', '12/15/2008');
insert into employee (id, name, email, birthday) values (24, 'Lorelle', 'lworleyn@bigcartel.com', '9/6/1978');
insert into employee (id, name, email, birthday) values (25, 'Vail', 'vcausbyo@opera.com', '5/27/1971');
insert into employee (id, name, email, birthday) values (26, 'Stoddard', 'smullerp@yale.edu', '4/15/1980');
insert into employee (id, name, email, birthday) values (27, 'Somerset', 'sisaksonq@163.com', '3/12/1964');
insert into employee (id, name, email, birthday) values (28, 'Marys', 'mdoylendr@biblegateway.com', '3/10/2000');
insert into employee (id, name, email, birthday) values (29, 'Jefferey', 'jparkinss@msu.edu', '9/15/1974');
insert into employee (id, name, email, birthday) values (30, 'Beverie', 'bfriendt@chicagotribune.com', '3/3/1969');
insert into employee (id, name, email, birthday) values (31, 'Briggs', 'bgimsonu@engadget.com', '11/15/2011');
insert into employee (id, name, email, birthday) values (32, 'Gretel', 'gfarhertyv@dailymail.co.uk', '12/24/1965');
insert into employee (id, name, email, birthday) values (33, 'Doris', 'dnoseworthyw@state.tx.us', '6/15/1999');
insert into employee (id, name, email, birthday) values (34, 'Constanta', 'ccoultx@marketwatch.com', '4/21/1988');
insert into employee (id, name, email, birthday) values (35, 'Tiphani', 'toffilery@dropbox.com', '11/2/1976');
insert into employee (id, name, email, birthday) values (36, 'Sharl', 'swhitlowz@amazonaws.com', '1/26/1990');
insert into employee (id, name, email, birthday) values (37, 'Kris', 'kcadding10@adobe.com', '6/25/2004');
insert into employee (id, name, email, birthday) values (38, 'Bear', 'bbucknill11@webnode.com', '6/19/2021');
insert into employee (id, name, email, birthday) values (39, 'Domingo', 'dneenan12@imageshack.us', '12/27/2018');
insert into employee (id, name, email, birthday) values (40, 'Ogdan', 'odicey13@fotki.com', '10/9/1979');
insert into employee (id, name, email, birthday) values (41, 'Jyoti', 'jperis14@upenn.edu', null);
insert into employee (id, name, email, birthday) values (42, 'Theo', 'tshrimpton15@samsung.com', '10/15/1966');
insert into employee (id, name, email, birthday) values (43, 'Joana', 'jcarlile16@infoseek.co.jp', '8/22/1987');
insert into employee (id, name, email, birthday) values (44, 'Madlen', 'mcasiroli17@com.com', '11/2/1996');
insert into employee (id, name, email, birthday) values (45, 'Rozele', 'rfishpond18@chron.com', '1/11/1988');
insert into employee (id, name, email, birthday) values (46, 'Cathyleen', 'cnavaro19@nytimes.com', '9/22/1961');
insert into employee (id, name, email, birthday) values (47, 'Vinny', 'vleishman1a@gravatar.com', '11/21/2009');
insert into employee (id, name, email, birthday) values (48, 'Tynan', 'twinridge1b@studiopress.com', '4/27/1971');
insert into employee (id, name, email, birthday) values (49, 'Rooney', 'rgore1c@digg.com', '4/1/2008');
insert into employee (id, name, email, birthday) values (50, 'Ethelda', 'ecarolan1d@google.ru', null)


--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

update employee
set name = 'Gozde'
where id= 1
returning *;

update employee
set birthday = '01-01-20'
where name like 'A%'
returning *

update employee 
set name = 'XXX',
	id=51
where email like '%google%'
returning *


--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

delete from employee
where id = 51

delete from employee
where email ilike '%mit%'
returning *

delete from employee
where name like 'A%' and id<20
returning *

