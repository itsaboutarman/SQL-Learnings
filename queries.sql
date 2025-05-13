USE sql_hr;
SELECT 
    e.employee_id,
    e.first_name AS employee_name,
    m.first_name AS manager

FROM employees e
LEFT JOIN employees m
    ON e.reports_to = m.employee_id;
    
-- it shows every employee either they have a manager or not