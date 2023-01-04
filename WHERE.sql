-- WHERE you can use equality and inequlaity signs 
SELECT *
FROM Customers
-- WHERE points > 3000;
-- WHERE state = 'VA';
-- WHERE state != 'VA';
-- WHERE birth_date > '1990-01-01' AND points > 1000; -- Customers born after 1990

WHERE NOT (birth_date > '1990-01-01') OR 
	(points > 1000 AND state = 'VA');
-- Order of operations for logical operations (AND then OR)