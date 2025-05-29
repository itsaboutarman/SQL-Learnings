SELECT LENGTH ('blue') --> 4
SELECT UPPER ('blue') --> BLUE
SELECT LOWER ('Blue') --> blue
SELECT LTRIM ('     blue') --> blue
SELECT LTRIM ('blue     ') --> blue
SELECT TRIM ('   blue     ') --> blue
SELECT LEFT ('Arman Salehi' , 5) --> Arman
SELECT RIGHT ('Arman Salehi' , 6) --> Salehi
SELECT SUBSTRING ('Arman Salehi' , 3, 6) --> man Sa
SELECT SUBSTRING ('Arman Salehi' , 3) --> man Salehi
SELECT SUBSTRING ('Arman Salehi' , 3) --> man Salehi
SELECT SUBSTRING ('s', 'Arman Salehi') --> 7 (search is not case sensitive)
SELECT SUBSTRING ('z', 'Arman Salehi') --> 0 (when the character is not found, it returns 0)
SELECT REPLACE ('Arman Salehi', 'Arman', 'Mahan') --> Mahan Salehi
SELECT CONCAT ('Arman', ' ', 'Mahan') --> Arman Mahan

