-- Inserting a row
-- DEFAULT MY SQL will generate default value
-- use comma to add more
-- MYSQL keeps deleted rows so be aware of those id key
INSERT INTO customers (
	first_name,
    last_name,
    birth_date,
    address,
    city,
    state)

VALUES (
	DEFAULT,
    'John',
    'Smith', 
    '1999-01-01',
    NULL,
    'address',
    'city',
    'CA',
    DEFAULT)
