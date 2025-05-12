USE sql_store;

SELECT *
FROM customers

-- AND OR NOT Operrators
WHERE not (customer_id > 2 and birth_date > '1990-01-01') or
      points > 1000


-- IN Operator
WHERE state in ('VA', 'FL', 'GA')
-- it's equal to WHERE state = 'VA' or state = 'FL' or state = 'GA'


-- BETWEEN Operator
WHERE points between 3000 and 10000
-- it's equal to WHERE points >= 3000 and points <= 10000


-- LIKE Operator
WHERE last_name like 'b%' --it means any last_name that starts with b
WHERE last_name like '_y' --it means any last_name that ends with y and only has 2 characters


--REGEXP Operator
WHERE last_name regexp 'field' -- represent any expression that has field
WHERE last_name regexp '^field' -- represent any expression that starts with field
WHERE last_name regexp 'field$' -- represent any expression that ends with field
WHERE last_name regexp 'field|mac' -- represent any expression that has field or mac
WHERE last_name regexp '[gim]e' -- represent any expression that has ge or ie or me
WHERE last_name regexp '[a-h]e' -- represent any expression that has e and any character from a to h before it


--IS NULL Operator
WHERE phone IS NOT NULL