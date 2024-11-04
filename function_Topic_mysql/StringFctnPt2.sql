--STRING FUNCTIONS 

--The UPPER() function converts a string to upper-case.
SELECT UPPER("this is sql Function topic");

CREATE DATABASE string_Function;
USE string_Function;
CREATE TABLE IF NOT EXISTS user (
    id INT NOT NULL,
    name VARCHAR (70),
    Description TEXT,
    Status ENUM ('Pending', 'completed') DEFAULT 'pending'
);
INSERT INTO user (id,name,Description,Status) VALUES
(1,'ali','I m bs-english student','pending'),
(2,'sana','i m graduated student','completed'),
(3,'maria','i m mphill student','pending');
SELECT UPPER(name)
FROM user ;
SELECT UPPER(Description)
FROM user;
SELECT UPPER(Status)
FROM user;
 --UCASE () FUNCTION IS SAME AS UPPER COMMENT
 --Are used to convert a string to uppercase
 --Both functions work the same way, 
 --so you can use either depending on your preference.

 SELECT UCASE('hello world') AS upper_case;
 --From the table "user" , upper ()& Ucase () : the name & description 
 SELECT UCASE(name),UPPER(Description)
 FROM user;
 SELECT id, UCASE(name),UPPER(Description),UCASE(Status)
 FROM user
 WHERE name='ali';
 SELECT UCASE('i m learning mysql : it is structured query language');

 --The TRIM() function removes leading and trailing spaces from a string.
 SELECT TRIM('     this is  mysql  practing topics    ');
 SELECT TRIM('   Hello World   ') AS trimmed_text;
SELECT TRIM(BOTH '*' FROM '***Hello World***') AS trimmed_text;
--Both "it removes from both sides "
SELECT TRIM(BOTH "*" FROM'*****TRIMING****' );
SELECT TRIM (BOTH '0' FROM '0023456600');
--LEADING "it removes from the starting , the leading one will be removed"
SELECT TRIM (LEADING '5' FROM '56669555');
SELECT TRIM(LEADING 'P' FROM 'Pakistan');
SELECT TRIM (LEADING 'a' FROM name) FROM user;
USE string_Function;
CREATE TABLE contacts (
    id INT NOT NULL,
    phone_no VARCHAR(80)
);
INSERT INTO contacts(id,phone_no) VALUES
(1,'-123-456-7890'),
(2,'-987-654-3210-'),
(3,'-456-789-1234'),
(4,'555-123-6789-');
SELECT* FROM contacts;
--Both will remove the spaces from both the beginning and end of the string
SELECT TRIM (BOTH'-' FROM phone_no) FROM contacts;
-- Leading will remove the (beginning) characters from a string 
SELECT TRIM (LEADING'-' from phone_no) FROM contacts;
--trailing will remove the  (ending) characters from a string
SELECT TRIM (TRAILING '-' FROM phone_no) FROM contacts;

--STRCMP() function : is used to compare two strings
-- "0: The strings are identical"
-- "1: string1 is greater than string2"
-- "-1: string1 is less than string2"

SELECT STRCMP('apple','apple') as result_1,
       STRCMP('apple','banana') AS result_2,
       STRCMP('banana','apple') AS result_3;

--From the user table COMMENt
SELECT id,name
FROM user 
ORDER BY STRCMP(name, UPPER(name));


--SUBSTR() : extracts a substring from a string (starting at any position).

SELECT SUBSTR(name,2,2)FROM user;
SELECT SUBSTR('ENGLISH',3,2);
SELECT SUBSTR('HELLO WORLD', -3);
CREATE TABLE Products (
    id INT NOT NULL,
    product_name VARCHAR (70)
);
INSERT INTO Products (id,product_name) VALUES
(1,'ABC-12345'),
(2,'DEF-67090'),
(3,'XYZ-23444'),
(4,'PQR-20000'),
(5,'JKL-65777777');
SELECT *FROM Products;
SELECT id,product_name ,SUBSTRING(product_name, INSTR(product_name,'-')+1) AS nmeric_value
FROM Products;
