select hour(order_time) as time ,count(order_id) as count from
orders
group by time 
order by count desc;