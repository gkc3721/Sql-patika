select rental_rate,replacement_cost from film
where (rental_rate between 2 and 4) and (replacement_cost between 10 and 20);

-- in komutu seçilen eleman değerlerine sahip verileri getirir--
select * from film
where length in (40,50,60)

select * from film
where replacement_cost not in (24.99, 17.99)

select * from film
where replacement_cost between 12.99 and 16.98;

select first_name, last_name from actor
where first_name in ('Penelope','Nick','Ed');

select * from film
where rental_rate in (0.99,2.99,4.99) and replacement_cost in (12.99,15.99,28.99);
