 -- Group the orders by date and calculate the average number of pizzas ordered per day.
 SELECT 
    ROUND(AVG(quantity), 0) AS avg_pizzas_per_day
FROM
    (SELECT 
        orders.orders_date, SUM(order_details.quantity) AS quantity
    FROM
        orders
    JOIN order_details ON orders.orders_id = order_details.order_id
    GROUP BY orders.orders_date) AS orders__quantity;
 
