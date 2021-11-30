--references ile foreign key oluşturduk.
create table book(
	id serial primary key,
	title varchar(100) not null,
	page_number integer not null,
	author_id integer references author(id))
	
select * from book
join author on author.id=book.author_id;

--real veri tipi numeric ancak ondalıktan sonra 6, double veri tipi ondalıktan sonra 15 rakam.
create table test(
	real_type real,
	double_type double precision,
	numeric_type numeric)	

insert into test
values
	(1.3284709328409,
	1.87438570,
	1.32416877509)
	
select (10.0 ::integer)
select (10.4444444444444444 ::double precision)
--char(10) 10 karakterlik alan ouşturuyor ve girilen veri daha az karaktere sahipse kalanını boşluk ile dolduruyor. 
--varchar(10) ise girilen veri daha az karaktere sahip olsa bile verideki karakter kadar alan oluşturuyor.
select('lorem'::char(10))
select('lorem ipsunkfeşrgqkireş'::char(10))
select('lorem'::varchar(10))
select('lorem'::text)

select('1980-12-03'::date)
select('dec-03-1980'::date)
select('dec 03 1980'::date)
select('03:44'::time)
select('03:44 pm'::time)
select('03:44 am'::time)
select ('02:16'::time with time zone)
select('1980 december 03 02:16:07'::timestamp)
