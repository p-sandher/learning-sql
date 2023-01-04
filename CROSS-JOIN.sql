-- Cross join, join every record from table a to table b 

-- see all the products each customer bought
SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c
CROSS JOIN products p;

-- Same as

SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c, products p;