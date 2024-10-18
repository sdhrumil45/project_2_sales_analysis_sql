SELECT 
    pizza_types.category, SUM(order_details.quntity)
from
    pizza_types JOIN pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id join
	order_details ON order_details.pizza_id =  pizzas.pizza_id
    
GROUP BY pizza_types.category
ORDER BY SUM(order_details.quntity) DESC;
