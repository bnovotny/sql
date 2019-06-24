#Average salary by title

select distinct title from titles;

select * from titles;

SELECT t.title, ROUND(AVG(s.salary),0) AS avg_salary
FROM titles as t
JOIN salaries as s
	ON t.emp_no = s.emp_no
	AND t.to_date = '9999-01-01'
	AND s.to_date = '9999-01-01'
GROUP BY t.title
ORDER BY AVG(s.salary) DESC;