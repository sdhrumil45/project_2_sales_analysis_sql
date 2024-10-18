with data as  (select name , sum(quntity*price) as revenue from pizzas join pizza_types on
pizzas.pizza_type_id = pizza_types.pizza_type_id join order_details on
order_details.pizza_id = pizzas.pizza_id
group by name
order by  revenue)
select name , round((revenue /
(SELECT SUM(quntity * price) AS Total_revenue FROM order_details
        JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id))*100,2) as per
from data
