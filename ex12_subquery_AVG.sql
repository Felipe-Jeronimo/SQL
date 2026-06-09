-- 13. Liste os clientes que gastaram mais do que a média geral de gastos.

select c.customer_id, SUM(p.amount) as total_cliente , concat(c.first_name, ' ', c.last_name) as cliente
from customer c
join payment p
on c.customer_id = p.customer_id
group by c.customer_id
having total_cliente > (
	select avg(p.amount) 
	from payment p);