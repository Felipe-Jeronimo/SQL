-- Liste os filmes e o nome da categoria a que pertencem.

select f.title, c.name
from film f
join film_category fc
on f.film_id = fc.film_id
join category c
on c.category_id = fc.category_id;

-- film_id

-- film_category