
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












# example shown by Douglas
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no # Only current department managers
    FROM dept_manager
    WHERE to_date = '9999-01-01'
) AND gender = 'F';

# example shown by Nicholas
SELECT first_name, last_name FROM employees WHERE emp_no IN (SELECT emp_no FROM dept_manager WHERE emp_no IN (SELECT emp_no FROM employees WHERE gender = 'F' AND to_date = '9999-01-01')) GROUP BY first_name, last_name;