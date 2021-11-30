select * from book;
select title,first_name,last_name from book
inner join author on book.author_id= author.id;

--inner join iki kümenin kesişim yerlerini alır. tabloları yazma sırası fark etmez.
--left join tablo1deki tüm verileri alır , onların diğer tablodaki eşleşen verilerle birleştirir. 
--eşleşen veri yoksa null atar. Tabloları yazma sırası fark eder.

select title,first_name,last_name from book
left join author on book.author_id= author.id;

--foreign key kısıtından kurtulmak:
alter table book 
drop constraint book_author_id_fkey;

insert into book(title, page_number,author_id)
values('Gülün Adı',466,44), ('Yapay Zeka',108,55);

select * from book
select book.title,author.first_name,author.last_name from author
left join book on author.id=book.author_id
where book.id is not null
order by book.title;

--right join ikinci tablodaki verileri alır ve birinciyle birleştiği noktadaki verileri alır. sadece left join kullanılabilir.
--full join iki tabloyu tamamen eşleştirir, olmayan değerlere null atar. tabloları yazma sırası önemli diil.

select * from book
full join author on book.author_id= author.id
--nullları çıkaralım, inner join sonucu alırız.
where(book.id is not null and author.id is not null);

--tablolardaki ortak olmayan verileri çekmek:
select * from book
full join author on book.author_id= author.id
where(book.id is null or author.id is null);



--city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country)
--isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
select city,country from city
left join country on city.country_id=country.country_id;

--customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name 
--isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
select payment_id,first_name,last_name from customer
right join payment on customer.customer_id=payment.customer_id;

--customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name 
--isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.
select rental_id, first_name,last_name from customer
full join rental on customer.customer_id=rental.customer_id;
