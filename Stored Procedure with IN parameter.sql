USE employees;

DROP PROCEDURE IF EXISTS emp_salary;

DELIMITER $$
USE empoyees $$
CREATE PROCEDURE emp_salary(IN p_emp_no INTEGER) -- p_emp_no is the name of the procedure. And note the data type as well.
BEGIN
	SELECT
		e.first_name, e.last_name, s.salary, s.from_date, s.to_date
	FROM
		employees e
			JOIN
        salaries s ON e.emp_no = s.emp_no
	WHERE
		e.emp_no = p_emp_no; -- the parameter we've created in the beginning of the procedure. so it will effect by what you input
END$$

DELIMITER ;

CALL emp_salary(11222);

/* 
===== Use aggregate function in stored procedure | new query below =====
*/

USE employees;

DROP PROCEDURE IF EXISTS emp_avg_salary;

DELIMITER $$
USE empoyees $$
CREATE PROCEDURE emp_avg_salary(IN p_emp_no INTEGER)
BEGIN
	SELECT
		e.first_name, e.last_name, AVG(s.salary)
	FROM
		employees e
			JOIN
        salaries s ON e.emp_no = s.emp_no
	WHERE
		e.emp_no = p_emp_no; -- the parameter we've created in the beginning of the procedure. so it will effect by what you input
END$$

DELIMITER ;

CALL emp_salary(11222);