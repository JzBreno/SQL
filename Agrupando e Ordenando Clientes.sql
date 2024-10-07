use sakila;
/*selecionado customer e soma de gastos*/
/*selecionando tabelas de payment e customer e usando funções*/
select p.customer_id,concat(c.first_name," ",c.last_name) as name, sum(p.amount) as gasto_total
from payment p
join customer c 
/*join feito com os campos customer_id*/
on c.customer_id = p.customer_id
/*relatio agrupado ao id do usurio ID -> Relatorio*/
group by p.customer_id
/*ordenando do valor maior pro menor*/
order by gasto_total desc
/*adicinando para aoenas os primeiros 10 clientes que mais compraram*/
limit 0,10;