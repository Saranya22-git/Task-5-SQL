 # SQL Joins (Inner, Left, Right, Full)

It includes examples of different types of **SQL JOINS** to illustrate how relational tables can be connected and queried.

### Tables

#### 1. `department`
- `dept_id` (INT, Primary Key) – Unique identifier for each department.
- `dept_name` (VARCHAR) – Name of the department.

#### 2. `student`
- `student_id` (INT, Primary Key) – Unique identifier for each student.
- `student_name` (VARCHAR) – Name of the student.
- `dept_id` (INT, Foreign Key) – References the `department` table.

## 🧱 SQL Setup

```sql
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
```
## JOIN
🔹`Join` is a clause that is used to combine rows from two or more tables based on a relative column between them such as a foreign key
### INNER JOIN
🔹Only matching student-department pairs
```SQL
SELECT student.student_id, student.student_name, department.dept_name
FROM student
INNER JOIN department ON student.dept_id = department.dept_id;
```
### LEFT JOIN
🔹All students, even if they have no department
```SQL
SELECT student.student_id, student.student_name, department.dept_name
FROM student
LEFT JOIN department ON student.dept_id = department.dept_id;
```
### RIGHT JOIN
🔹All departments, even if they have no students
```SQL
SELECT student.student_id, student.student_name, department.dept_name
FROM student
RIGHT JOIN department ON student.dept_id = department.dept_id;
```
### FULL JOIN
🔹Combine LEFT and RIGHT joins
```SQL
SELECT student.student_id, student.student_name, department.dept_name
FROM student
LEFT JOIN department ON student.dept_id = department.dept_id
UNION
SELECT student.student_id, student.student_name, department.dept_name
FROM student
RIGHT JOIN department ON student.dept_id = department.dept_id;
```
# ⛏️Tools
🔹 MySQL Workbench

# **Happy Learning! 🎓**

