--Determine the distribution of orders by hour of the day (at which time the orders are maximum (for inventory management and resource allocation).
SELECT DATEPART(HOUR, time) AS hour_of_day,
       COUNT(*) AS order_count
FROM orders
GROUP BY DATEPART(HOUR, time)
ORDER BY hour_of_day;



