-- 10. Liste os atores que atuaram em mais de 30 filmes.

select 
	concat(a.first_name, ' ', a.last_name) as nome,
    count(f.film_id) as qtde_films   
from actor a
join film_actor f
on a.actor_id = f.actor_id
group by a.actor_id, a.first_name, a.last_name
having count(f.film_id) > 30
order by qtde_films;
