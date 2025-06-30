CREATE DATABASE student_details;

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

INSERT INTO department
VALUES (111,"ECE"),
       (112,"CSE"),
       (113,"AI&DS"),
       (114,"AI&ML"),
       (115,"IT");

INSERT INTO student  
VALUES (5401, 'Sara', 111),
       (5402, 'Tara', 114),
       (5403, 'Meera', 115),
       (5404, 'Kiara', 113);

-- INNER JOIN: Only matching rows from both tables

SELECT student.student_id, student.student_name, department.dept_name
FROM student
INNER JOIN department ON student.dept_id = department.dept_id;

-- LEFT JOIN: All students, even if they have no department

SELECT student.student_id, student.student_name, department.dept_name
FROM student
LEFT JOIN department ON student.dept_id = department.dept_id;

-- RIGHT JOIN: All departments, even if they have no students

SELECT student.student_id, student.student_name, department.dept_name
FROM student
RIGHT JOIN department ON student.dept_id = department.dept_id;

-- FULL OUTER JOIN 

SELECT student.student_id, student.student_name, department.dept_name
FROM student
LEFT JOIN department ON student.dept_id = department.dept_id
UNION
SELECT student.student_id, student.student_name, department.dept_name
FROM student
RIGHT JOIN department ON student.dept_id = department.dept_id;

       