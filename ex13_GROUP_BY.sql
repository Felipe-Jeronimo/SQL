-- Descobrir a quantidade de filmes por categoria.

SELECT c.name, COUNT(fc.film_id) AS qtde_filmes
FROM film_category fc
JOIN category c
ON fc.category_id = c.category_id
GROUP BY fc.category_id, c.name;

-- Descobrir o faturamento total de cada cliente, mas apenas dos que gastaram mais.

SELECT 
	CONCAT(c.first_name, ' ', c.last_name) AS nome_cliente, 
	SUM(p.amount) AS total_gastos
FROM customer c
JOIN payment p
ON p.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY total_gastos DESC;

-- Identificar quais lojas têm um estoque muito grande para determinados filmes.

SELECT 
	i.film_id, 
    f.title, 
    i.store_id AS loja, 
    COUNT(i.film_id) AS qtde_estoque
FROM inventory i
JOIN film f
ON i.film_id = f.film_id
GROUP BY i.film_id, i.store_id
HAVING qtde_estoque > 2
ORDER BY qtde_estoque;


