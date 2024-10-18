SELECT 
    SUM(quntity) AS Total_count, size
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY size
ORDER BY Total_count DESC