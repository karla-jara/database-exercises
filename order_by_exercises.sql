USE employees;

# SQL Order By Exercise

# 2 Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Demeyer.
# results for below first displays Irena Pelz and last Vidya Demeyer
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

# 3 Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Boguraev.
# results for below first displays Irena Acton, last name displayed is Vidya Zweizig
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

# 4 Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Vidya Quittner.
# result for below first displays Irena Acton, and last name displayed is Maya Zyda
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;


# 5 Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
# results as described above
SELECT * FROM employees WHERE last_name LIKE 'e%' ORDER BY emp_no;

# 6 Now reverse the sort order for both queries and compare results.
# Not sure about the results being asked for
SELECT * FROM employees WHERE last_name LIKE '%e' ORDER BY emp_no;