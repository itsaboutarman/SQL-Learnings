USE sql_store;

SELECT order_id, o.customer_id, first_name, last_name
--notice that when we have a same column in both tables, we need to specify
--which table we are referring to -> orders.customer_id

FROM orders o
-- o is an alias for orders

JOIN customers c --or we can use INNER JOIN
-- c is an alias for customers
    ON o.customer_id = c.customer_id