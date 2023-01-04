-- regular expression 

SELECT *
FROM customers 
-- WHERE last_name LIKE '%field%' -- same thing 
WHERE last_name REGEXP 'field';
WHERE last_name REGEXP '^field'; -- something before field
WHERE last_name REGEXP 'field$'; -- end with field
WHERE last_name REGEXP '^field|mac|rows'; -- starts with field or has mac or has rows in name (pipe)
-- | is logical or

WHERE last_name REGEXP '[gim]e' 
/*
-- has any of the following before e 
ge
ie
me
*/
WHERE last_name REGEXP 'e[fmq]';

WHERE last_name REGEXP '[a-h]e' 

/*
	Exercise
    first names are ELKA or AMBUR
    last names end with EY or ON
    last name start with MY or contains SE
    last names contain B followed by R or U
*/

-- 1

SELECT *
FROM customers
WHERE first_name REXEXP 'elka|ambur';

-- 2

SELECT *
FROM customers
WHERE last_name REXEXP 'ey$|on$';

-- 3

SELECT *
FROM customers
WHERE last_name REXEXP '^my|se';

-- 4
SELECT *
FROM customers
WHERE last_name REXEXP 'b[ru]';
