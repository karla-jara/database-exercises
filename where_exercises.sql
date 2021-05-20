USE employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees WHERE last_name LIKE 'e%';

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%';

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN)
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

# Find all employees whose last name starts with 'E' — 7,330 rows
SELECT * FROM employees WHERE last_name LIKE 'E';

# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT * FROM employees WHERE  first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' AND gender = 'M';

#Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%' NOT'%qu%'





# SELECT first_name, last_name FROM employees ORDER BY last_name DESC, first_name LIMIT 200;
#
# SELECT first_name, last_name FROM employees ORDER BY first_name DESC, last_name LIMIT 200;