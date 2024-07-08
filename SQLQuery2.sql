-- Calculate the total revenue generated from pizza sales.
SELECT SUM(P.price * O.quantity) AS TotalRevenue, P.pizza_id
FROM pizzas AS P
INNER JOIN order_details AS O 
    ON P.pizza_id = O.pizza_id
GROUP BY P.pizza_id
ORDER BY TotalRevenue DESC;


