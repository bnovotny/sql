#Trial of creating and altering tables

CREATE TABLE avg_dept_salary AS
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

SELECT * FROM avg_dept_salary;

ALTER TABLE avg_dept_salary
ADD COLUMN dept_location varchar(255) NOT NULL DEFAULT 'nowhere';

INSERT INTO avg_dept_salary (dept_name, avg_salary, dept_location)
VALUES ("Outreach", 626648, '7th floor');

ALTER TABLE avg_dept_salary
ADD PRIMARY KEY (dept_name);

UPDATE avg_dept_salary
SET avg_salary=62648
WHERE dept_name='Outreach';

DROP TABLE avg_dept_salary;