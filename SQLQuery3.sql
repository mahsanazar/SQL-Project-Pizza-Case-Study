--Identify the highest-priced pizza.
SELECT pizza_id, price, size
FROM pizzas
ORDER BY price DESC;