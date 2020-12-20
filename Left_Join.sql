# Left Join - manager on the left
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

# Left Join - departments on the left but select manager column first
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    departments_dup d
        LEFT JOIN
    dept_manager_dup m ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

# Left Join - departments on the left but select departments column first
SELECT 
    d.dept_no, m.emp_no, d.dept_name
FROM
    departments_dup d
        LEFT JOIN
    dept_manager_dup m ON m.dept_no = d.dept_no
ORDER BY d.dept_no;

# Left Outer Join = Left Join
SELECT 
    d.dept_no, m.emp_no, d.dept_name
FROM
    departments_dup d
        LEFT OUTER JOIN
    dept_manager_dup m ON m.dept_no = d.dept_no
ORDER BY d.dept_no;

# Retrive the result of left table without inner join
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT OUTER JOIN
    departments_dup d ON m.dept_no = d.dept_no
WHERE d.dept_name IS NOT NULL
ORDER BY m.dept_no;

#Exercise
/*
 Join the 'employees' and the 'dept_manager' tables to return 
 a subset of all the employees whose last name is Markovitch. 
 See if the output contains a manager with that name. 
 ‘emp_no’, ‘first_name’, ‘last_name’, ‘dept_no’, ‘from_date’. 
 Order by 'dept_no' descending, and then by 'emp_no'.
 */
SELECT
	e.emp_no, e.first_name, e.last_name, dm.dept_no,dm.from_date
FROM
	employees e
		LEFT JOIN
	dept_manager dm ON e.emp_no = dm.emp_no
    WHERE e.last_name = 'Markovitch'
ORDER BY dm.dept_no DESC, dm.emp_no;