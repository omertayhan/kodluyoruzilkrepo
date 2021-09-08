--1
SELECT country from country
WHERE country LIKE 'A%a'; 
--2
SELECT country from country
WHERE country LIKE '_____%n'; 
--3
SELECT country from country
WHERE country LIKE '%t%t%t%t%'; 
--4
SELECT * from film
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99; 
