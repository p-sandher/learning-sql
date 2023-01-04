SELECT first_name,
	last_name, 
    points, 
    points *10 + 100 AS discount_factor -- Creating an Alias changes what the col name is can also be 'discount factor'
    -- selects info in that order
    -- Remember order operations
FROM customers