CREATE DATABASE IF NOT EXISTS task7_db;
USE task7_db;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

CREATE TABLE departments (
    department VARCHAR(50),
    location VARCHAR(50)
);
INSERT INTO employees (emp_id, name, department, salary) VALUES
(1, 'Raj', 'HR', 40000),
(2, 'Priya', 'IT', 70000),
(3, 'Kiran', 'IT', 60000),
(4, 'Sneha', 'HR', 45000),
(5, 'Arjun', 'Finance', 50000);

INSERT INTO departments (department, location) VALUES
('HR', 'Delhi'),
('IT', 'Bangalore'),
('Finance', 'Mumbai');
CREATE VIEW high_paid_employees AS
SELECT name, department, salary
FROM employees
WHERE salary > 50000;
SELECT * FROM high_paid_employees;
CREATE VIEW dept_avg_salary AS
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;
SELECT * FROM dept_avg_salary;
DROP VIEW IF EXISTS high_paid_employees;