-- INNER JOINS

SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;
    -- align by customer id
-- use Alias if you want to shorten the amount of times you use table name
-- after you make an alias you have to keep using it


/*
	order_items
*/

SELECT order_id, oi.product_id, quantity, oi.unit_price
FROM order_items oi
JOIN products p 
ON oi.product_id = p.product_id;