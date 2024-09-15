use sakila;

select * from sakila.payment;

SELECT MAX(amount) 
FROM payment;

SELECT MIN(amount)
FROM payment;

SELECT AVG(amount)
FROM payment;

SELECT MAX(amount) AS Maximo ,MIN(amount) AS Minimo , AVG(amount) AS Media
FROM payment;