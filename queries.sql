USE sql_hr;
SELECT 
    e.employee_id,
    e.first_name AS employee_name,
    m.first_name AS manager

FROM employees e
JOIN employees m
    ON e.reports_to = m.employee_id;

-- The purpose of this code is to connect each employee 
-- with their manager in the database. 
-- It's creating a self-join, which means the employees table 
-- is being joined with itself to show the relationship 
-- between employees and their managers.