--union iki sorguyu birleştirmeyi sağlar. kesişim olursa bir kere yazdırır. 
--union all sonuçlardan aynı olanları da gösterir
--union kullanırken her iki sorguda da seçtiğim sütun sayıları eşit olmalı.
(select * from book
order by page_number desc
limit 5)
union all
(select * from book order by title
limit 5)

(select id,email from author)
union all
(select id,title from book)

--intersect iki sorgunun kesişimlerini alır.
(select * from book
order by page_number desc
limit 10)
intersect all
(select * from book order by title
limit 10)

--except iki sorgu arasında farklı olanları getirir. ilk sorguda bulunan ancak ikincide bulunmayan veriler gelir.
(select * from book
order by page_number desc
limit 10)
except
(select * from book order by title
limit 10)

--actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
(select first_name from actor)
union 
(select first_name from customer)

--actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
(select first_name from actor)
union 
(select first_name from customer)

--actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
(select first_name from actor)
intersect 
(select first_name from customer)

--actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak 
--ikinci tabloda bulunmayan verileri sıralayalım.
(select first_name from actor)
except
(select first_name from customer)

--İlk 3 sorguyu tekrar eden veriler için de yapalım.
(select first_name from actor)
except all
(select first_name from customer)
