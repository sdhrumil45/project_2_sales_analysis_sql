SELECT 
    ROUND(AVG(qty), 0) AS 'Average/day'
FROM
    (SELECT 
        order_date, SUM(quntity) AS qty
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY order_date) AS data;