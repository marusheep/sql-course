#SQL Subqueries with EXISTS-NOT EXISTS nested inside WHERE - exercise
/*
Select the entire information for all employees whose job title is “Assistant Engineer”. 
Hint: To solve this exercise, use the 'employees' table.
*/

USE employees;

SELECT
	*
FROM
	employees e WHERE EXISTS (SELECT
			*
        FROM
			titles t
		WHERE
			e.emp_no = t.emp_no AND t.title = 'Assistant Engineer'
);