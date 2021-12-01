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

