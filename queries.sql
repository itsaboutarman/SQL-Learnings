String Types:

- CHAR(X)    fixed-length
- VARCHAR(X) max: 65,535 character
- MEDIUMTEXT max: 16 MB
- LONGTEXT 	 max: 4 GB
- TINYTEXT	 max: 255 bytes	
- TEXT		 max: 64 KB
---------------------------------------------------------------
Integer Types:

- TINYINY
- UNSIGNED TINYINT
- SMALLINT
- MEDIUMINT
- INT
- BIGINT
---------------------------------------------------------------
Fixed-point and Floating-point Types:

- DECIMAL(p, s)
- FLOAT
- DOUBLE
---------------------------------------------------------------
Boolean Types:

- True 1
- False 0
---------------------------------------------------------------
Date and Time Types:

- DATE 
- TIME 
- DATETIME 
- TIMESTAMP
- YEAR
---------------------------------------------------------------
Blob Types:
-- we use blob types to store large amounts of binary data like images
- TINYBLOB		255b
- BLOB 			65KB
- MEDIUMBLOB	16MB
- LONGBLOB		4GB
/*
	Problems with storing files in a database:
		1- increased database size
		2- slower backups
		3- performance problems
		4- more code to read/write images
*/
