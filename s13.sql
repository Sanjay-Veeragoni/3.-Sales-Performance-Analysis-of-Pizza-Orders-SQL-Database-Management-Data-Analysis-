-- Analyze the cumulative revenue generated over time.
select orders_date,
sum(revenue) over(order by orders_date) as cum_revenue
from
(select orders.orders_date,
sum(order_details.quantity*pizzas.price) as revenue
from order_details join pizzas
on order_details.pizza_id=pizzas.pizza_id
join orders
on order_details.order_id=orders.orders_id
group by orders.orders_date ) as sales;