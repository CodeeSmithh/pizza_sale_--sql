SELECT 
    pizza_types.name, pizzas.price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;


-- select quantity, count(order_details_id) 
-- from order_details group by quantity;


SELECT 
    pizzas.size,
    COUNT(order_details.order_detail_id) AS order_count , order_details.quantity
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size,order_details.quantity
ORDER BY order_count DESC limit 5;







































