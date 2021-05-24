-- 1 Find all the employees with the same hire date as employee 101010 using a subquery.
-- 69 Rows

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE emp_no IN (
            SELECT emp_no
            FROM dept_manager
            WHERE to_date > CURDATE()
            )
        ) AND
    )