--Determine the top 3 most ordered pizza types based on revenue (let's see the revenue wise pizza orders to understand from sales perspective which pizza is the best selling)
SELECT TOP 3 
       SUM(P.price * O.quantity) AS TotalRevenue, 
       P.pizza_id
FROM pizzas AS P
INNER JOIN order_details AS O 
    ON P.pizza_id = O.pizza_id
GROUP BY P.pizza_id
ORDER BY TotalRevenue DESC;
