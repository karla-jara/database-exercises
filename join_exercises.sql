
# SQL Joins Exercise

# 2 Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
    JOIN dept_manager as dm
        ON dm.emp_no = e.emp_no
    JOIN departments as d
        ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name ASC;

# 3 Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND gender = 'F'
ORDER BY d.dept_name ASC;

# 4 Find the current titles of employees currently working in the Customer Service department.
SELECT DISTINCT title, COUNT(title) AS 'Total'
FROM employees AS e
    JOIN dept_emp AS de
        ON de.emp_no = e.emp_no
    JOIN departments AS d
        ON d.dept_no = de.dept_no
    JOIN titles AS t
         ON t.emp_no = e.emp_no
WHERE de.to_date = '9999-01-01' AND d.dept_name = 'Customer Service' GROUP BY title;
# Not getting the same results but similar

# Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary AS Salary
FROM employees AS e
    JOIN salaries AS s
        ON s.emp_no = e.emp_no
    JOIN dept_manager AS dm
        ON dm.emp_no = s.emp_no
    JOIN departments AS d
        ON d.dept_no = dm.dept_no
WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
ORDER BY `Department Name` ASC;


# Bonus Find the names of all current employees, their department name, and their current manager's name .
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, dept_manager AS Manager
FROM employees AS e
    JOIN dept_emp AS de
        ON de.emp_no = e.emp_no
    JOIN dept_manager AS dm
        ON dm.dept_no = de.dept_no
    Join departments AS d
        ON d.dept_no = dm.dept_no
WHERE (de.to_date = '9999-01-01' and dm.to_date = '9999-01-01') and de.dept_no = d.dept_no
ORDER BY `Manager` ASC LIMIT 50;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, CONCAT(e.first_name, ' ', e.last_name) AS Manager FROM employees AS e     JOIN dept_emp AS de         ON de.emp_no = e.emp_no     JOIN dept_manager AS dm         ON dm.dept_no = de.dept_no     Join departments AS d         ON d.dept_no = dm.dept_no WHERE de.to_date = '9999-01-01' and dm.dept_no = d.dept_name ORDER BY `Department`;

