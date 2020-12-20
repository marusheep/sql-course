/*
Create a view that will extract the average salary of all managers registered in the database. 
Round this value to the nearest cent.

If you have worked correctly, after executing the view from the “Schemas” section in Workbench, 
you should obtain the value of 66924.27.*/

USE employees;

CREATE OR REPLACE VIEW v_manager_avg_salary AS
SELECT 
    AVG(salary)
FROM
    salaries
WHERE
    EXISTS( SELECT 
            emp_no
        FROM
            dept_manager
        WHERE
            dept_manager.emp_no = salaries.emp_no);

