USE sql_store;

INSERT INTO customers
VALUES(
    DEFAULT,
    'Arman',
    'Salehi',
    '2003-09-21',
    NULL,
    'Address',
    'City',
    DEFAULT
)
-------------------------------------------------------------
-- we can suply the list of columns 
-- that we want to insert values into
INSERT INTO customers( 
    first_name,
    last_name,
    birth_date
    )

VALUES(
    'Arman',
    'Salehi',
    '2003-09-21',
)