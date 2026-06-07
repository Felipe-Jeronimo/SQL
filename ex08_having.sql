-- 08. Quais clientes fizeram mais de 30 aluguéis? Mostre nome e quantidade.

select 
	concat(c.first_name, ' ', c.last_name) as nome, 
	count(r.rental_id) as qtde_alugueis
from rental r
join customer c
on c.customer_id = r.customer_id
group by c.customer_id, c.first_name, c.last_name
having count(r.rental_id)  > 30
order by qtde_alugueis desc -- ordenei para ficar melhor a visualização
;


