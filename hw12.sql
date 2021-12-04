select * from book
select * from author
--alt query'de birden fazla geri dönen değer olduğunda o edğerlerin nasıl kullanılacağını all ya da any ile yapıyoruz.
select first_name,last_name,id from author
where id= any
(select author_id from book where title='Yapay Zeka' or title= 'sed');




--film tablosunda film uzunluğu length sütununda gösterilmektedir. 
--Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

select count(*) from film
where length >
(select avg(length) from film)

--film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
select count(*) from film
where rental_rate =
(select max(rental_rate) from film)

--film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
select * from film
where (rental_rate =(select min(rental_rate) from film)) and (replacement_cost=(select min(replacement_cost) from film))

--payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
select first_name,last_name,customer.customer_id from payment
inner join customer on customer.customer_id=payment.customer_id
group by customer.customer_id order by sum(payment.amount)

--film uzunluğu en fazla olan filmlerin isimlerini,uzunluğunu actor isim ve soyisimler
--ile birlikte yazdıralım
select actor.first_name, actor.last_name,film.title,film.length
from actor join film_actor on actor.actor_id=film_actor.actor_id
join film on film.film_id=film_actor.film_id
where film.length=
(
select max(length) from film)

---Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and 
--their respective average city populations (CITY.Population) rounded down to the nearest integer.
--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT p.Continent,FLOOR(AVG(c.Population)) FROM City c, Country p 
WHERE c.CountryCode=p.Code 
GROUP BY p.Continent

--isminde en az 4 tane e veya E bulunan kaç film vardır
select count(*) from film
where title ilike '%e%e%e%e%'

--kategori isimlerini ve kategori başına düşen film sayısını yazdırınız
select count(*),category.name from category
join film_category on film_category.category_id = category.category_id
join film on film.film_id =film_category.film_id
group by category.name;

---En çok film  bulunan rating kategorisi hangisidir
select count(*),rating from film
group by rating
order by count(*) desc
limit 1

--film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en düşük 3 filmi sıralayınız.
select title,length,replacement_cost from film
where title ilike 'k%'
order by length desc,replacement_cost asc

--en çok alışveriş yapan müşterinin adı nedir?
select sum(amount),customer.first_name,customer.last_name from payment
join customer on customer.customer_id=payment.customer_id
group by payment.customer_id,customer.first_name,customer.last_name
order by sum(amount) desc

select * from book
select * from author
--alt query'de birden fazla geri dönen değer olduğunda o edğerlerin nasıl kullanılacağını all ya da any ile yapıyoruz.
select first_name,last_name,id from author
where id= any
(select author_id from book where title='Yapay Zeka' or title= 'sed');

select author.first_name, author.last_name,book.title, book.page_number
from author inner join book on book.author_id = author.id
where page_number>
(select avg(page_number) from book)
