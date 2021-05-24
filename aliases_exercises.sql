USE employees;
# 3 Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.
SELECT CONCAT(last_name, ', ', first_name) AS full_name FROM employees LIMIT 10;

# 4 Add the date of birth for each employee as 'DOB' to the query.
SELECT CONCAT(last_name, ', ', first_name) AS full_name, birth_date AS DOB FROM employees LIMIT 10;

# 5 Update the query to format full name to include the employee number so it is formatted as 'employee number - last name, first name'.
SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name, birth_date AS DOB FROM employees LIMIT 10;

# SQL Indexes Exercise

# 4 Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.
ALTER TABLE albums ADD UNIQUE(name, artist);