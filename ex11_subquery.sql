-- 11. Quais filmes nunca foram alugados?

select f.film_id, f.title
from film f
where f.film_id not in (
	select distinct i.film_id
	from inventory i
    join rental r on r.inventory_id = i.inventory_id
    );