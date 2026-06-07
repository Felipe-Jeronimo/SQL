-- 07. Quantos filmes existem em cada categoria? Ordene do maior para o menor.

select c.name as categoria, count(fc.film_id) as qtde_film
from film_category fc
join category c
on c.category_id = fc.category_id
group by c.name 
order by qtde_film desc;

