-- Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT CONVERT(date, O.date) AS order_date,
       AVG(CAST(details.quantity AS DECIMAL(10,2))) as avg_pizzas_ordered
FROM order_details AS details
LEFT JOIN orders AS O ON details.order_id = O.order_id
GROUP BY CONVERT(date, O.date)
ORDER BY avg_pizzas_ordered DESC;
