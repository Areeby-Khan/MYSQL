--Q:1
--CREATE TABLE
CREATE DATABASE Practice;
USE Practice;
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    enrollment_date DATE
);
--CREATE COURSE TABLE
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(100),
    enrollment_year INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

--INSERT DATA IN students table COMMENT
INSERT INTO students (first_name, last_name, age, city, enrollment_date) VALUES
('Ali', 'Javed', 20, 'New York', '2023-09-01'),
('Bisma', 'Sameer', 22, 'Chicago', '2022-08-15'),
('Kiran', 'Lala', 21, 'New York', '2023-09-01'),
('Davood', 'Ahmar', 23, 'Los Angeles', '2021-07-10'),
('Eman', 'Hassan', 20, 'Chicago', '2023-01-12'),
('Freen', 'Tahir', 24, 'New York', '2022-03-03');
--INSERT DATA IN courses table COMMENT
INSERT INTO courses (student_id, course_name, enrollment_year) VALUES
(1, 'Math 101', 2023),
(2, 'History 201', 2022),
(3, 'Math 101', 2023),
(4, 'Science 101', 2021),
(5, 'History 201', 2023),
(6, 'Math 101', 2022),
(1, 'Science 101', 2023),
(3, 'History 201', 2023);
--Q:2
--Select All Students: 
SELECT * FROM students;
--Q:3
--Select All Courses:
SELECT * FROM courses;
--Q:4
-- Write a SQL query to find all students who live in "New York".
SELECT *FROM 
students
WHERE city='New York';
--Q:5
--Write a SQL query to count the total number of students.
SELECT COUNT(*) AS students_total
FROM students;

--Q:6
--Write a SQL query to find all students enrolled in "Math 101".
SELECT students.student_id ,students.first_name,students.last_name
FROM students
JOIN courses ON students.student_id=courses.course_id
WHERE  courses.course_name='Math 101';
--Q:7
--Write a SQL query to list all students ordered by
SELECT *FROM students
ORDER BY enrollment_date DESC;
--Q:8
--Write a SQL query to list courses, ordered by enrollment_year.
SELECT*FROM courses
ORDER BY  enrollment_year;
--Q:9
--Write a SQL query to find all students who are younger than 22.
SELECT*FROM students
WHERE age>22;
--Q:10
--Write a SQL query to find all unique cities where students reside.
SELECT DISTINCT city
FROM students;
--Q:11
--Write a SQL query to find the count of students in each city.
SELECT city,COUNT(*) AS student_count
FROM students
GROUP BY city;
--Q:12
--Write a SQL query to find the average age of students.
SELECT AVG(age)
FROM students;
--Q:13
-- Write a SQL query to count the number of students enrolled in each course for each year.
SELECT course_name ,enrollment_year , COUNT(student_id)
FROM courses
GROUP BY course_name,enrollment_year;
--Q:14
--Write a SQL query to list each student with the courses they are enrolled in.
SELECT students.student_id,students.first_name,students.last_name,courses.course_name
FROM students
JOIN courses ON students.student_id=courses.course_id;
--Q:15
--Write a SQL query to count the number of courses each student is enrolled in.
SELECT students.first_name, students.last_name, COUNT(courses.course_id) AS course_count
FROM students
JOIN courses ON students.student_id = courses.student_id
GROUP BY students.student_id;
--Q:16
--Write a SQL query to find all students who are not enrolled in any course.
SELECT students.first_name,students.last_name
FROM students
LEFT JOIN courses ON students.student_id=courses.course_id
WHERE courses.course_id IS NULL;
--Q:17
--Write a SQL query to display each student’s first_name, last_name, and the enrollment_year of the courses they are enrolled in.
SELECT students.first_name, students.last_name, courses.enrollment_year
FROM students
JOIN courses ON students.student_id = courses.student_id;
--Q:18
--Write a SQL query to find the oldest student(s) in the students table.
SELECT *FROM students
WHERE age =(SELECT MAX(age) FROM students);
--Q:19
-- Write a SQL query to find the courses taken by a student named "Eman Hassan."
SELECT courses.course_name
FROM courses
JOIN students ON courses.student_id = students.student_id
WHERE students.first_name = 'Eman' AND students.last_name = 'Hassan';
--Q:20
--Write a SQL query to find students who are enrolled in more than one course.
SELECT students.first_name, students.last_name, COUNT(courses.course_id) AS course_count
FROM students
JOIN courses ON students.student_id = courses.student_id
GROUP BY students.student_id
HAVING course_count > 1;

