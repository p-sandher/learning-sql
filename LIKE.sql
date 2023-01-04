-- LIKE Operator

SELECT *
FROM customers
WHERE last_name LIKE 'brush%' -- lastname starts with brush

WHERE last_name LIKE '%b%' -- any number of chars before and after b (can be anywhere even at the beginning)

WHERE last_name LIKE '%y' -- ends with the y

WHERE last_name LIKE '_____y'; -- 5 chars followed by y 
WHERE last_name LIKE 'b____y'; -- start with b and end with y, 3 chars in between

/*
	Execise: Get the customer whose address contain TRIAL or AVENUE 
    and phone # end with 9 
*/

SELECT *
FROM customers 
WHERE address LIKE '%trail%' OR
	address LIKE '%avenue%'
    
WHERE phone LIKE '%9'