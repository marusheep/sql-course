#Join more than two tables in SQL - exercise
/*
Select all managers’ first and last name, hire date, 
job title, start date, and department name.
*/

USE employees;

SELECT
	e.first_name, e.last_name, e.hire_date, dm.from_date, t.title, d.dept_name
FROM
		dept_manager dm
			JOIN
		employees e ON dm.emp_no = e.emp_no
			JOIN
		titles t ON e.emp_no = t.emp_no
			JOIN
		departments d ON dm.dept_no = d.dept_no
WHERE t.title = 'Manager'
;