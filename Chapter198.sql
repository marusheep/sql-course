#Tips and tricks for joins - exercise
/*
How many male and how many female managers do we have 
in the ‘employees’ database?
*/

USE employees;

SELECT
	e.gender, COUNT(dm.emp_no)
FROM
	dept_manager dm
		JOIN
	employees e ON dm.emp_no = e.emp_no
GROUP BY gender
;