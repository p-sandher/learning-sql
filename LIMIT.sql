-- LIMIT
-- Limit how many records are shown 
-- Always at the end 

SELECT *
FROM customers
LIMIT 3;

-- If we want specific number of records at a specific place

SELECT * 
FROM customers
LIMIT 6, 3;
-- start at record 6 and get the 3 records after it so 7,8,9


/*
	Get top 3 loyal customers
*/

SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3; 