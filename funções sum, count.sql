SELECT 
	SUM(amount) AS 'Soma de valores',
    COUNT(amount) AS 'Numero de vendas'
FROM payment
WHERE staff_id = 2;