/*
Return all products (name, unit price, new price)
*/

SELECT name, 
	unit_price, 
	unit_price * 1.1 AS new_price
FROM products;