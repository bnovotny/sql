#First practice of queries with employee data

use employees;

/*
Create a list of the current average salaries for each department,
ordered from greatest to least
*/
SELECT d.dept_name, ROUND(AVG(s.salary),0) AS avg_salary
FROM dept_emp as de
JOIN departments as d
	ON de.dept_no = d.dept_no
	AND de.to_date = '9999-01-01'
JOIN salaries as s
	ON s.emp_no = de.emp_no
	AND s.to_date = '9999-01-01'
GROUP BY d.dept_name
ORDER BY AVG(s.salary) DESC;