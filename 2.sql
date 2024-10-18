SELECT 
    ROUND(SUM(quntity * price), 2) AS Total_revenue
FROM
    order_details
        JOIN
    pizzas ON order_details.pizza_id = pizzas.pizza_id;

