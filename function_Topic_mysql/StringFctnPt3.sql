--STRING FUNCTIONS 
--IN THIS WE WILL LEARN SOME OF STRING FUNCTIONS 
--MySQL FIND_IN_SET() Function
--The FIND_IN_SET() function returns the position of a string within a list of strings.
SELECT FIND_IN_SET('apple','apple,banana,grapes') AS position ;
--SYNTAX FIND_IN_SET (): 
-- "FIND_IN_SET(substring, string_list)"
SELECT FIND_IN_SET('grapes','orange,banana,grapes,berry') AS index_positon;
 --Using db:
 USE string_function;
--CREATE TABLE 
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR (70) NOT NULL,
    product_tags VARCHAR(90) NOT NULL
);
INSERT INTO products VALUES(1,'Laptop','electronics,computer');
DROP TABLE products;
CREATE TABLE IF NOT EXISTS  Products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR (70) NOT NULL,
    product_tags VARCHAR(90) NOT NULL
);
INSERT INTO Products VALUES (1,'laptop','electronics,computer');
INSERT INTO Products VALUES(2,'Phone','electronics,communication');
INSERT INTO Products VALUES(3,'Headphones','electronis,audio');
INSERT INTO Products VALUES (4,'Blender','kitchen,applince');
SELECT product_name , product_tags
FROM Products
WHERE FIND_IN_SET ('electronics',product_tags)>0;

SELECT product_name,product_tags
FROM Products
WHERE FIND_IN_SET ('audio',product_tags) >0  OR FIND_IN_SET('applince',product_tags)>0;
------------------------------------------------------------------------
--FORMAT() Function
--The FORMAT() function rounds the number to two decimal places and adds commas for readability.
--SYNTAX
--  " FORMAT(number, decimal_places, [locale])"
SELECT FORMAT(2346.8348,2) AS round_Off;
SELECT FORMAT(12345.6789, 2) AS FormattedNumber;
SELECT FORMAT(12345.67891234, 5) AS FormattedNumber;
SELECT FORMAT(1500, 3) AS FormattedNumber;

SELECT FORMAT(987654321, 4) AS FormattedNumber;
--------------------------------------------------------------------

--INSERT() Function
--The INSERT() function inserts a string within a string at the specified position and for a certain number of characters.
--SYNTAX
----INSERT(original_string, start_position, length, new_string)---

SELECT INSERT('Hello World',7,5,'MYSQL') AS result;
SELECT INSERT('Hello World',7,18,'Beautiful People !') AS stng;
SELECT INSERT('GOOD MORNING PEOPLE !',5,8,'');
SELECT product_name,
INSERT(product_name,7,100,'Perfume') AS updated_name
FROM Products;
SELECT INSERT('abcdef', 3, 2, 'XYZ') AS Result;
SELECT product_name, INSERT(product_name, CHAR_LENGTH(product_name) + 1, 0, ' - Pro') AS ModifiedName
FROM Products;
SELECT product_name, INSERT(product_name, 3, 4, '') AS ModifiedName
FROM Products;
SELECT product_name, 
       IF(LOCATE('top', product_name) > 0, INSERT(product_name, 2, 3, '***'), product_name) AS ModifiedName
FROM Products;
SELECT product_name, INSERT(product_name, 1, 0, 'Super-') AS ModifiedName
FROM Products;
------------------------------------------------------------------------------
--INSTR() Function
--SYNTAX
-------INSTR(original_string, substring)----------

SELECT INSTR('Hello world', 'world') as UPDATEDD;
SELECT INSTR('HELLO PEOPLE', 'mysql');
SELECT INSTR('Database', 'data') AS Position;
SELECT INSTR('abcdefg', 'd') AS Position;
SELECT INSTR('apple','p');
-------------------------------------------------------------------------------
--LEFT() function
--SYNTAX
-------LEFT(string, number_of_chars)------
SELECT LEFT('Hello World', 5) AS Result;
SELECT product_tags,
LEFT(product_tags,6) AS leftt
FROM Products;

SELECT LEFT('Apple', 1) AS Result;
SELECT LEFT('MySQL Database', 5) AS Result;
SELECT LEFT('Programming', 7) AS Result;
SELECT LEFT('Hi', 5) AS Result;
SELECT LEFT('2024-11-09', 4) AS Year;
USE string_function;
CREATE TABLE PhoneNo (
    phone_no VARCHAR(80)
);
INSERT INTO PhoneNo(phone_no)VALUES('123-456-7890'),
('987-654-3210'),
('555-123-4567'),
('333-565-7778');
SELECT phone_no,
LEFT (phone_no,3)AS cutted
FROM PhoneNo;
