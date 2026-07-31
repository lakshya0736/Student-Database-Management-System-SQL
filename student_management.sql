CREATE DATABASE StudentManagementDB;

USE StudentManagementDB;


-- Creating Student Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT,
    department VARCHAR(50),
    marks DECIMAL(5,2)
);


-- Inserting Student Data
INSERT INTO Students VALUES
(1, 'Rahul Sharma', 'rahul@gmail.com', 20, 'Computer Science', 85.5),
(2, 'Priya Singh', 'priya@gmail.com', 21, 'Information Technology', 90.0),
(3, 'Aman Verma', 'aman@gmail.com', 19, 'Electronics', 78.5),
(4, 'Sneha Gupta', 'sneha@gmail.com', 20, 'Computer Science', 92.5);


-- Display all students
SELECT * FROM Students;


-- Search students by department
SELECT *
FROM Students
WHERE department = 'Computer Science';


-- Update student marks
UPDATE Students
SET marks = 95
WHERE student_id = 1;


-- Delete student record
DELETE FROM Students
WHERE student_id = 3;


-- Count students in each department
SELECT department, COUNT(*) AS total_students
FROM Students
GROUP BY department;


-- Find highest marks
SELECT MAX(marks) AS highest_marks
FROM Students;


-- Display students according to marks
SELECT *
FROM Students
ORDER BY marks DESC;