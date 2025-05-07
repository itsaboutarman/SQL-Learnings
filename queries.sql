USE sql_store;

SELECT first_name,
last_name,
points,
(points + 10) * 100 AS 'discount factor' -- we can use alias to rename the column

-- you can use DISTINCT keyword to get unique values like this:
-- SELECT DISTINCT state