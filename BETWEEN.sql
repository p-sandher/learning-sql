-- BETWEEN operator

SELECT *
FROM customers
-- WHERE points >= 1000 AND points <= 3000; -- same as
WHERE points BETWEEN 1000 and 3000; -- this is inclusive