USE employees;

SELECT *
FROM emp_manager
ORDER BY emp_manager.emp_no;

/* use distinct */

SELECT DISTINCT
	e1.*
FROM
	emp_manager e1
	JOIN
	emp_manager e2 ON e1.emp_no = e2.manager_no;
    
/* use WHERE */

SELECT 
	e1.*
FROM
	emp_manager e1
	JOIN
	emp_manager e2 ON e1.emp_no = e2.manager_no
WHERE
	e2.emp_no IN(SELECT
		manager_no
	FROM
		emp_manager
    );
    
SELECT
		manager_no
	FROM
		emp_manager;
