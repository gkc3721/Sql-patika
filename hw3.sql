--Ma ile başlayan--
select * from customer
where first_name like 'Ma%';

-- a ile başlayan y ile biten--
select * from customer
where first_name like 'A%y';

-- ilike büyük küçük harfe duyarlı olmadan aratır--
select * from customer
where first_name ilike 'a%';

-- _ tek karakter için yer tutarak aratır--
select * from customer
where first_name like 'J_an'

-- ~~* ilike demek. ~~ like demek--
select * from customer
where first_name ~~* 'a%'

--country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 
--'a' karakteri ile sonlananları sıralayınız.
select country from country
where country like 'A%a';

--country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan 
--ve sonu 'n' karakteri ile sonlananları sıralayınız.
select country from country
where country like '_____%n';

--film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük 
--harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
select title from film
where title ilike '%t%t%t%t%';

--film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu 
--(length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.
select * from film
where title like 'C%' and length>90 and rental_rate=2.99;
