USE sql_store;

SELECT 
    order_id,
    IFNULL(shipper_id, 'Not Assigned') AS shipper -- if shipper_id is null, then assign 'Not Assigned'
    COALESCE(shipper_id, comments, 'Not Assigned') AS shipper_id

FROM oreders

-- with the IFNULL function, we can substitute a value for null values
-- with the COALESCE function, we supply a list of values, and it will return the first non-null value