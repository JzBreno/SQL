use sakila;
/*selecionando colunas das tabelas payment e customer*/
select concat(c.first_name, " ",c.last_name) as name ,c.customer_id, sum(p.amount) as total, count(p.amount) as compras
from payment p
/*agrupando as tabelas pela coluna em comum customer_id*/
join customer c using(customer_id)
group by p.customer_id
/*o where nao analisa agregações, podemos usar o having neste caso*/
having (total > 50)
order by total;