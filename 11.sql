with mycte as (select order_date as date , round(sum(price*quntity),2) as total from orders join order_details on
order_details.order_id = orders.order_id join pizzas on order_details.pizza_id = pizzas.pizza_id
group by date)

select date,round(sum(total) over( order by date),2) as cumsum from mycte