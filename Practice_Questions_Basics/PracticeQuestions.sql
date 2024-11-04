--Q:1
   --Write a SQL statement to create a table named employees with the following columns:
   USE string_Function;
   CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
     first_name VARCHAR (50),
     last_name VARCHAR (60),
     email VARCHAR(70),
     address VARCHAR(70),
     Age INT DEFAULT 20,
     Hired_date DATE
   );
   --INserted values
INSERT INTO employees (first_name,last_name,email,address,Age,Hired_date)VALUES
('Sana','Shaheed','sana23@gmail.com','Model Town A',22,'2024-09-03'),
('Maryam','Mughal','maryam@gmail.com','Hashmi Garden QMC',20,'2024-07-01'),
('Ahmad','Amar','ahmad@gmail.com','Medical Store ABC',23,'2024-11-01'),
('Nayyab','Ghufar','nayyab@gmail.com','Commerical area',21,'2024-10-23'),
('Komal','Zulfaqar','komal@gmail.com','Modern City Xyz',22,'2024-09-16');
--Q:2
--Write a SQL statement to insert a employee into the employees table
INSERT INTO employees (first_name,last_name,email,address,Age,Hired_date)VALUES
('Maria','Ibraheem','maria123@gmail.com','Model Town B',21,'2024-10-10');
--: Write a SQL query to select all columns from the employees table.
SELECT *FROM employees;
--Q:3 
-- Write a SQL query to find all employees whose last name is "Smith".
SELECT last_name FROM employees
WHERE last_name='Smith';
--Q:4 
--Write a SQL statement to update the email address of the employee with id 2 to "sana.new@example.com".
UPDATE employees
SET email='sana.new@example.com'
WHERE id=2;
--Write a SQL statement to update the email address of the employee with id 1 to "maria123@gmail.com".
UPDATE employees
SET email='maria123@gmail.com'
WHERE id=1;
--Q:4
--Write a SQL statement to delete the employee with id 3 from the employees table.
DELETE FROM employees
WHERE id=3;
--Q:5
--Ordering Results: Write a SQL query to select all employees from employees table & order results by hire_date in descending order.
SELECT *FROM employees
ORDER BY Hired_date DESC;
--due to dublicasy of the data i drop the table employees 
--ND again after drop i create table of the named employees;(So, do not be confuse)
DROP TABLE employees;
 --Q:6
 --Write a SQL query to count the total number of employees in the employees table.
 SELECT COUNT(*) AS total_employees
 FROM employees; 

 --Q:7
 --Write a SQL query to find the earliest hire date from the employees table.
 SELECT MIN(Hired_date) AS earliest_hired_date
 FROM employees;
 --Q:8
 -- Write a SQL statement to create an index on the last_name column of the employees table.
 CREATE INDEX IND_last_name
 ON employees(last_name);
 SHOW INDEX FROM employees;
--Q:9
--Write a SQL query to find all distinct email domains from the employees table (e.g., example.com).
SELECT DISTINCT  SUBSTRING_INDEX(email,'@',-1) AS email_domain
FROM employees;

SELECT DISTINCT SUBSTRING_INDEX(email,'s',-1) FROM employees;
--Q:10
--Write a SQL query to find all employees whose first name starts with the letter "J".
SELECT *FROM employees
WHERE first_name LIKE 's%';
--Q:11
--Write a SQL query to find all employees who were hired between January 1, 2023, and December 31, 2023.
SELECT *FROM employees
WHERE Hired_date BETWEEN '2023-01-01' AND '2023-12-31';
--Q:12
--Write a SQL query to find all employees whose first names are either "sana" or "komal".
SELECT *FROM employees
WHERE first_name IN ('sana','komal');
--Q:13
--Write a SQL query to count the number of employees hired each year and display the results in ascending order by year.
SELECT YEAR(Hired_date) AS hire_year, COUNT(*) AS employee_count
FROM employees
GROUP BY YEAR(Hired_date)
ORDER BY hire_year ASC;
--Q:14
--Write a SQL query to find the employees who were hired after the earliest hire date in the employees table.
SELECT *
FROM employees
WHERE Hired_date > (SELECT MIN(Hired_date) FROM employees);
--Q:15
-- Write a SQL statement to create a view named employee_view that selects first_name, last_name, and email from the employees table.
CREATE VIEW employee_view AS
SELECT first_name, last_name, email
FROM employees;
SELECT * FROM employee_view;
