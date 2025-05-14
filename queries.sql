USE sql_store;

DELETE FROM invoices -- if we just execute this query, it will delete all the rows from the table
WHERE client_id = 
            (SELECT * 
            FROM clients
            WHERE name = 'Myworks');