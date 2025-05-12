USE sql_store;

SELECT *
FROM customers


ORDER BY first_name
ORDER BY first_name DESC -- DESC is descending order
ORDER BY state, first_name -- order by state first then first name
-- one of the difference between mysql and other database management systems
-- is that you can sort data by ant columns, whether that column
-- is in the select statement or not
