#First practice of queries with employee data
#Creates view of average salary by department

use employees;

/*
Create a list of the current average salaries for each department,
ordered from greatest to least
*/
CREATE VIEW avg_dept_salary AS
SELECT departments.dept_name, ROUND(AVG(salaries.salary),0) AS avg_salary
FROM dept_emp
JOIN departments 
	ON dept_emp.dept_no = departments.dept_no
	AND dept_emp.to_date = '9999-01-01'
JOIN salaries 
	ON salaries.emp_no = dept_emp.emp_no
	AND salaries.to_date = '9999-01-01'
GROUP BY departments.dept_name
ORDER BY AVG(salaries.salary) DESC;
