SELECT *
FROM Customers
-- WHERE state = 'VA' or state = 'GA' or state = 'FL'; -- use the IN operator
-- WHERE state IN ('VA', 'FL', 'GA');
WHERE state NOT IN ('VA', 'FL', 'GA');