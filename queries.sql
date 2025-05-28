USE sql_store;

DELETE FROM invoices -- if we just execute this query, it will delete all the rows from the table
WHERE client_id = 
            (SELECT * 
            FROM clients
            WHERE name = 'Myworks');

-- 'IN' is used when the subquery may return multiple values.
-- '=' is used when the subquery returns exactly one value.