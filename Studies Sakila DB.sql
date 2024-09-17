use sakila;
show tables;
select * from film;
select title from film;

select * from film
where length > 60
order by rental_rate desc;

select * from customer;

select * from customer 
where active = 0;

select *from address;

select *from customer;

select cus.first_name, cus.last_name, ad.address
from customer cus
join address ad
on cus.address_id = ad.address_id
where active = 1;
select *from address;
select *from city;
select * from country;
select *from country
where country = 'Brazil';

select usuario.first_name, usuario.last_name, co.country from customer usuario
join address ende
on usuario.address_id = ende.address_id 
join city ci
on ende.city_id = ci.city_id
join country co
on ci.country_id = co.country_id
where co.country_id = 15;

select * from actor;
select *from film;
select * from film_actor;

set @na := "scarlett";
select ac.actor_id, ac.first_name, ac.last_name, f.title from actor ac
join film_actor fac
on ac.actor_id = fac.actor_id
join film f
on f.film_id = fac.film_id
where f.film_id = fac.film_id AND ac.actor_id = fac.film_id
order by ac.first_name;

set @na := "JESSICA";
select ac.actor_id, ac.first_name, ac.last_name, f.title from actor ac
join film_actor fac
on ac.actor_id = fac.actor_id
join film f
on f.film_id = fac.film_id
where f.film_id = fac.film_id AND ac.actor_id = fac.film_id
AND ac.first_name = @na;

