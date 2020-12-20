USE employees;

SELECT m.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m
INNER JOIN
departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

#=====exercise=====
SELECT 
    dm.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    e.hire_date
FROM
    employees e
        JOIN #JOIN = INNER JOIN
    dept_manager_dup dm ON e.emp_no = dm.emp_no;