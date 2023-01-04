-- NULL

SELECT *
FROM customers
WHERE phone IS NULL;

SELECT *
FROM customers
WHERE phone NOT IS NULL;

-- Get the orders that are not shipped yet 
SELECT *
FROM orders
WHERE shipped_date IS NULL;

