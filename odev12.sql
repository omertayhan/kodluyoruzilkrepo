--1
select count(length) from film
where length > any
(
select length from film 
where length > 115
);

--2
select count(rental_rate) from film
where rental_rate = all
(
select rental_rate from film 
	where rental_rate = 4.99
); 0,99 9,99

--3
SELECT * FROM film
WHERE film_id = ANY
(
	SELECT film_id FROM film
	WHERE rental_rate =
	(
	SELECT MIN(rental_rate) FROM film
	)
	AND
	replacement_cost = 
	(
	SELECT MIN(replacement_cost) FROM film
	)
);

--4
SELECT * FROM customer
WHERE customer_id = ANY
(
	SELECT customer_id FROM payment
	GROUP BY customer_id
	HAVING COUNT(*) =
	(
		SELECT MAX(count_nums) FROM 
		(
			SELECT customer_id, COUNT(*) AS count_nums FROM payment
			GROUP BY customer_id
		) AS counts
	)
);
