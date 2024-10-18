SELECT 
    pizza_type_id, SUM(quntity)
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizza_type_id
ORDER BY SUM(quntity) DESC
LIMIT 5;