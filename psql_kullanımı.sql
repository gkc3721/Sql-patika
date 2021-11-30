--PSQL ile PostgreSQL'e bağlanmak.
psql -U <kullanıcı_adı>

--Kullanıcıya ait şifreyi girdikten sonra varsayılan veritabanı postgres'e bağlanıyor.
postgres=#

--Bulunan veritabanlarını listelemek için:
\l veya \list

--Bizim örneğimizde dvdrental veritabanına bağlanacağız.
\c dvdrental veya \connect dvdrental

--Bağlanılan dvdrental veritabanında bulunan tabloları listelemek için:
\dt

--To list all schemas of the currently connected database, you use the \dn command.

--Herhangi bir tablonun sütunlarını ve tablo detaylarını görmek için:
\d <tablo_adı>

--sorgu için
SELECT * 
FROM customer
WHERE first_name LIKE 'A%' AND last_name LIKE 'A%'

-- PSQL terminal ekranından çıkmak için:
\q

--To display command history, you use the \s command.
\s

--To know all available psql commands, you use the \? command.
\?

--To turn on query execution time, you use the \timing command.You use the same command \timing to turn it off.

--example
--postgres veritabanına bağlanıp database oluşturmak:
postgres=#psql -U postgres
postgres=# create database testdb;

postgres=# \l
postgres=# \q

--psql üzerinden localhost olarak, port numarasıyla database'e erişmek
psql -h localhost -p 5432 -U postgres testdb
--başka veritabanına bağlanmak için
\c dvdrental

create table users(
  id serial primary key,
  username varchar(50) not null,
  birthday date)

\d+ ile detaylı bilgi alınıyor database ile ilgili
\d+ users ile users tablosunun bilgisi geliyor

testdb=# alter table users rename column birthday to bday;

alter table users add constraint unique_username unique(username)
