-- 09. Qual a receita total gerada por cada loja?

select sto.store_id as loja, SUM(p.amount) as receita
from store sto
join staff sta
on sto.store_id = sta.store_id
join payment p
on p.staff_id = sta.staff_id
group by sto.store_id;