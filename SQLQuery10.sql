--Find the category-wise distribution of pizzas (to understand customer behaviour).
SELECT P.category,P.name,
       COUNT(*) AS pizza_count
FROM pizza_types AS P
LEFT JOIN pizzas AS PIZ ON P.pizza_type_id = PIZ.pizza_id
GROUP BY P.category, P.name
ORDER BY pizza_count DESC, P.category;
