USE employees;

# Modify your first query to order by first name, then last_name
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

# Find all employees whose last name starts with 'E' — 7,330 rows order by employee #
SELECT * FROM employees WHERE last_name LIKE 'e%' ORDER BY emp_no;

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%';

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN)
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

# Find all employees whose last name starts with 'E' — 7,330 rows
SELECT * FROM employees WHERE last_name LIKE 'E';

# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');

#Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e';


# SELECT first_name, last_name FROM employees ORDER BY last_name DESC, first_name LIMIT 200;