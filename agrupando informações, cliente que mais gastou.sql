use sakila;
SELECT
	customer_id, SUM(amount) TOTAL
FROM payment
group by customer_id
ORDER BY  TOTAL DESC;

SELECT * FROM customer
WHERE customer_id = 526;

