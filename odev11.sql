--1
(
select first_name from customer
)
union
(select first_name from actor);
--2
(
select first_name from customer
)
except
(select first_name from actor);
--3
(
select first_name from customer
)
except
(select first_name from actor);

