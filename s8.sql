 -- Determine the distribution of orders by hour of the day.
 SELECT 
    HOUR(orders_time) AS hours, COUNT(orders_id) AS order_count
FROM
    orders
GROUP BY HOUR(orders_time) ;
 