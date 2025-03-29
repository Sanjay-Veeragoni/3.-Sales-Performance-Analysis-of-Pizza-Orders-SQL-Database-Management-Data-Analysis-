-- Retrieve the total number of orders placed.
SELECT 
    COUNT(orders_id) AS total_orders
FROM
    orders;