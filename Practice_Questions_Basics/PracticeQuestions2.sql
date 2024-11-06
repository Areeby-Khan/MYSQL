--BASIC PRACTICE QUESTIONS 
--Q:1
--CREATE TABLE 
USE string_function;
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade VARCHAR(2),
    city VARCHAR(50),
    enrollment_date DATE
);

--INSERT DATA
INSERT INTO students (first_name, last_name, age, grade, city, enrollment_date) VALUES
('Ali', 'Kamal', 20, 'A', 'Karachi', '2023-09-01'),
('Bisma', 'Shahkeel', 22, 'B', 'Bahawalpur', '2022-08-15'),
('Kiran', 'Malik', 21, 'A', 'Rahim yar khan', '2023-09-01'),
('Hassan', 'Khan', 23, 'C', 'Lahore', '2021-07-10'),
('Eman', 'Ahmad', 20, 'B', 'Karachi', '2023-01-12'),
('Fareed', 'Aliyan', 24, 'A', 'Muree', '2022-03-03'),
('Azlan', 'Waleed', 19, 'B', ''Bahawalpur'', '2024-01-05'),
('Hannan', 'Saqib', 21, 'C', 'Lahore', '2021-09-08'),
('Irum', '  Mahar', 22, 'A', 'Multan', '2023-06-20'),
('Jamsheed', 'Waseem', 20, 'B', 'Multan', '2023-04-11');

--Q:2
--Write a SQL query to retrieve all columns and records from the students table.
SELECT * FROM students;
--Q:3
--Write a SQL query to select only the first_name, last_name, and age of all students.
SELECT first_name, last_name, age FROM students;
--Q:4
--Write a SQL query to find all students who live in "New York".
SELECT * FROM students WHERE city = 'Lahore';
--Q:5
--Write a SQL query to find all students with a grade of "A".
SELECT * FROM students WHERE grade = 'A';
--Q:6
--Write a SQL query to find the average age of students.
SELECT AVG(age) AS average_age FROM students;
--Q:7
-- Write a SQL query to find all students who are older than 21.
SELECT * FROM students WHERE age > 21;
--Q:8
--Write a SQL query to select all students, ordered by enrollment_date in descending order.
SELECT * FROM students ORDER BY enrollment_date DESC;
--Q:9
--Write a SQL query to find the earliest enrollment date in the students table.
SELECT MIN(enrollment_date) AS earliest_enrollment FROM students;
--Q:10
--Write a SQL query to count the number of students in each city.
SELECT city, COUNT(*) AS student_count FROM students GROUP BY city;
--Q:11
--Write a SQL query to find students who were enrolled after January 1, 2023.
SELECT * FROM students WHERE enrollment_date > '2023-01-01';
--Q:12
--Write a SQL query to find all students whose first name starts with the letter "A".
SELECT * FROM students WHERE first_name LIKE 'A%';
--Q:13
--Write a SQL query to update the grade of the student with student_id 1 to "B".
UPDATE students SET grade = 'B' WHERE student_id = 1;
--Q:14
-- Write a SQL query to find students between the ages of 20 and 23.
SELECT * FROM students WHERE age BETWEEN 20 AND 23;
--Q:15
-- Write a SQL query to find all students who do not live in "Bahawalpur".
SELECT * FROM students WHERE city <> 'Bahawalpur';
--Q:16
--Write a SQL query to find all students who were enrolled in the year 2023.
SELECT * FROM students WHERE YEAR(enrollment_date) = 2023;
--Q:17
--Write a SQL query to find students who have a grade of either "A" or "B".
SELECT * FROM students WHERE grade IN ('A', 'B');
--Q:18
--Write a SQL query to count how many students are in each city.
SELECT city, COUNT(*) AS student_count FROM students GROUP BY city;
--Q:19
-- Write a SQL query to find students whose age is above the average age.
SELECT * FROM students WHERE age > (SELECT AVG(age) FROM students);
--Q:20
--Write a SQL query to find all students who are either from "Multan" or have a grade of "A".
SELECT * FROM students WHERE city = 'Chicago' OR grade = 'A';





