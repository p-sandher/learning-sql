/*
From order_items table, get the order for order #6 where 
	total price is greater than 30
*/ 

SELECT *
FROM order_items 
WHERE order_id = 6 AND unit_price * quantity > 30;