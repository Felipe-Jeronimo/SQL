-- Quais filmes têm duração acima de 120 minutos? Ordene do mais longo para o mais curto.

select title, length
from film
where length >120 
order by length desc;