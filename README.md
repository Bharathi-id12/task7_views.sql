# task7_views.sql
employees Table:

emp_id	name	department	salary

1	Raj	HR	40000
2	Priya	IT	70000
3	Kiran	IT	60000
4	Sneha	HR	45000
5	Arjun	Finance	50000


departments Table:

department	location

HR	Delhi
IT	Bangalore
Finance	Mumbai



---

✅ Outputs for Each View


---

🔹 1. View: high_paid_employees

CREATE VIEW high_paid_employees AS
SELECT name, department, salary
FROM employees
WHERE salary > 50000;

-- View usage
SELECT * FROM high_paid_employees;

Output:

name	department	salary

Priya	IT	70000
Kiran	IT	60000



---

🔹 2. View: employee_details

CREATE VIEW employee_details AS
SELECT e.emp_id, e.name, e.department, e.salary, d.location
FROM employees e
JOIN departments d ON e.department = d.department;

-- View usage
SELECT * FROM employee_details;

Output:

emp_id	name	department	salary	location

1	Raj	HR	40000	Delhi
2	Priya	IT	70000	Bangalore
3	Kiran	IT	60000	Bangalore
4	Sneha	HR	45000	Delhi
5	Arjun	Finance	50000	Mumbai



---

🔹 3. View: dept_avg_salary

CREATE VIEW dept_avg_salary AS
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- View usage
SELECT * FROM dept_avg_salary;

Output:

department	average_salary

HR	42500.00
IT	65000.00
Finance	50000.00



