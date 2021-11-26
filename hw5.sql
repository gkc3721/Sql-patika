--film datasını A ile başlayan filmleri uzunluğa göre azalan şekilde sırala
select * from film
where title like 'A%'
order by length desc;

--limit ,koşulu sağlayan ilk 20 değeri getirir. python -> head()
select * from film
where rental_rate=4.99
order by length
limit 20;

-- offset , o kadar sayıdaki ilk verileri geçerek getirir verileri
select * from actor
where first_name= 'Penelope'
order by last_name
offset 2
limit 1;

--film tablosunda bulunan ve film ismi (title) 'n' karakteri ile 
--biten en uzun (length) 5 filmi sıralayınız.
select length,title from film
where title like '%n'
order by length desc
limit 5;

--film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) 
--ikinci 5 filmi(6,7,8,9,10) sıralayınız.
select length,title from film
where title like '%n'
order by length asc
offset 5
limit 5;

--customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 
--olmak koşuluyla ilk 4 veriyi sıralayınız.
select * from customer
where store_id=1 
order by last_name desc
limit 4;
