select * from dept_manager;

/*
Compare current average department salaries with
the salaries of department managers
*/
SELECT d.dept_name, ads.avg_salary, s.salary AS manager_salary
FROM dept_manager as dm
JOIN salaries as s
	ON dm.emp_no = s.emp_no
	AND s.to_date = '9999-01-01'
	AND dm.to_date = '9999-01-01'
JOIN departments as d
	ON d.dept_no = dm.dept_no
JOIN avg_dept_salary as ads
	ON d.dept_name = ads.dept_name
ORDER BY avg_salary DESC;