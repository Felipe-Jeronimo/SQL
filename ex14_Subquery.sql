 -- Descobrir quais filmes têm o custo de substituição (replacement_cost) maior do que a média de todos os filmes da locadora.

SELECT title, replacement_cost
FROM film
WHERE replacement_cost >
	(SELECT AVG(replacement_cost)
	FROM film)
ORDER BY replacement_cost DESC;

/* 
O gerente da locadora quer fazer uma promoção com os filmes do ator Nick Stallone.
Ele precisa da lista com o título de todos os filmes que esse ator participou.
*** sem usar JOIN ***
*/

SELECT title
FROM film
WHERE film_id IN (
	SELECT film_id FROM film_actor WHERE actor_id = (
		SELECT actor_id FROM actor WHERE first_name = 'Nick' AND last_name = 'Stallone')
);





