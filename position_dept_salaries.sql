#Average salary for each position in each department
select * from departments;
select * from titles;
select * from dept_emp;


SELECT d.dept_name, t.title, ROUND(AVG(salary), 0) AS avg_salary
FROM current_dept_emp as cde
JOIN departments as d 
	ON cde.dept_no = d.dept_no
JOIN titles AS t
	ON t.emp_no = cde.emp_no
JOIN salaries AS s 
	ON t.emp_no = s.emp_no
GROUP BY d.dept_name , t.title
ORDER BY title, avg_salary DESC;