USE employee;

# List the first 10 distinct last name sorted in descending order.
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'Z%' ORDER BY last_name DESC LIMIT 10;

# Create a query to get the top 5 salaries and display just the employees number from the salaries table. The employee number results should be:
SELECT DISTINCT salary FROM salaries ORDER BY salary DESC LIMIT 5;

# Try to think of your results as batches, sets, or pages. The first five results are your first page. The five after that would be your second page, etc. Update the previous query to find the tenth page of results. The employee number results should be:
#HINT: LIMIT and OFFSET can be used to create multiple pages of data. What is the relationship between OFFSET (number of results to skip), LIMIT (number of results per page), and the page number?
SELECT DISTINCT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 50;
