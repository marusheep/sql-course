USE employees;

SELECT
	e.gender, AVG(s.salary) AS "Avg Salary"
FROM
	employees e
		JOIN
	salaries s ON e.emp_no = s.emp_no
GROUP BY e.gender;