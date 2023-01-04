
/*
	Composite primary key - has 2 keys 
    order id is repeated and differnet product id (but product id is also repeated)
    
*/

SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id


-- Inner Joins explicit

SELECT * 
FROM order o
JOIN customers c
	ON o.customer_id = c.customer_id;

-- Same as impolicit

SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;


-- Converting inner to outer join

-- only see customers that have order in the system
SELECT 
	c.customer_id,
	c.first_name,
    o.order_id
FROM customers c
JOIN orders o
	ON o.customer_id = c.customer_id;


-- seeing customers if they have an order or not is outer join

-- Left join is where all records on the left (customers) are there whetere its t or f

SELECT 
	c.customer_id,
	c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o
	ON o.customer_id = c.customer_id;
    
-- right or left is outer joins
-- right joins where all records on the right (orders) are there whether its t or f
SELECT 
	c.customer_id,
	c.first_name,
    o.order_id
FROM customers c
RIGHT JOIN orders o
	ON o.customer_id = c.customer_id;
    
-- Outer joins for multiple tables

-- everything even if it does not have a shipper id 
SELECT 
	c.customer_id,
	c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o
	ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id;

-- Best practice avoid right joins, stick to left its easier to understand

-- Short cut with the join is the same col name
SELECT *
FROM customers c
 JOIN orders o
	ON o.customer_id = c.customer_id;
    
-- is the same as 
SELECT *
FROM customers c
JOIN orders o
	USING (customer_id);
    
