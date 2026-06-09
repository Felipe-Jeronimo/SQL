-- 12. Qual o ator que aparece em mais filmes? Mostre apenas o primeiro lugar.

select 	
    concat(a.first_name,' ', a.last_name) as ator,
    count(a.actor_id) as qtde_filmes
from film_actor fa
join actor a
on fa.actor_id = a.actor_id
group by a.actor_id
order by qtde_filmes desc
limit 1;



