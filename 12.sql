 select name , revenue,category from
 (select category , name, revenue , rank() over(partition by category order by revenue desc) as rn from
 (select category , name, sum(quntity*price) as revenue   from pizzas join pizza_types on
pizzas.pizza_type_id = pizza_types.pizza_type_id join order_details on
order_details.pizza_id = pizzas.pizza_id
group by category,name) as a) as b
where rn <=3
