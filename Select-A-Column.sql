USE sql_store; /* current database, its bolded */

SELECT * -- use * to get all items
FROM customers -- FROM specifies which table to get data from
-- WHERE customer_id = 1 -- use WHERE to filter 
ORDER BY first_name; -- order the info by first name