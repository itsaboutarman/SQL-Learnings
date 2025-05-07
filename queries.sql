USE sql_store; -- you can choose any database you want

-- SQL is generally executed statement by statement, 
-- when you write multiple statements in a row,
-- you need to specify where one ends so 
-- the next one can begin.

SELECT * -- you can select any other column you want and separate them by comma
FROM customers -- you can choose any other table you want
WHERE customer_id > 3 -- filter the data
ORDER BY first_name -- sort the data

-- notice that the order of the query matters
