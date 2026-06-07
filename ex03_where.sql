-- Liste os filmes com classificação PG-13.

select title, rating
from film
where rating = "PG-13"
;