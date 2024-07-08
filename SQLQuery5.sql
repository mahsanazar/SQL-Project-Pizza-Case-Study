--List the top 5 most ordered pizza types along with their quantities.
SELECT COUNT(quantity) AS number , pizza_id
FROM order_details
GROUP BY pizza_id
ORDER BY number DESC;


