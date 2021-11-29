

SELECT rental_rate, MAX(length) 
FROM film
GROUP BY rental_rate;

select rating, count(*) from film
group by rating;

select replacement_cost,rental_rate, min(length) from film
group by replacement_cost, rental_rate
order by replacement_cost, rental_rate desc
limit 10;

--having gruplanmış verilere koşul ekliyor
select rental_rate, count(*) from film
group by rental_rate
having count(*)>325

select staff_id,count(*) from payment
group by staff_id
having count(*)>7300;

select customer_id, sum(amount) from payment
group by customer_id
having sum(amount)>100
order by sum(amount) desc;

--film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
SELECT rating, COUNT(*) FROM film
GROUP BY rating

--film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda 
--film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
select replacement_cost, count(*) from film
group by replacement_cost
having count(*) >50;

--customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
select store_id, count(*) from customer
group by store_id

--city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra 
--en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
select country_id,count(*) from city
group by country_id
order by count(*) desc
limit 1;



