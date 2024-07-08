---Find the total quantity of each pizza category ordered (this will help us to understand the category which customers prefer the most).
SELECT  t.category, SUM(CAST(d.quantity AS INT)) AS number
FROM order_details  AS d
left join pizzas as p on d.pizza_id = p.pizza_id
left join pizza_types as t on t.pizza_type_id = p.pizza_type_id
GROUP BY t.category




