USE employees;

DROP PROCEDURE IF EXISTS select_employees;

DELIMITER $$
CREATE PROCEDURE select_employees()
BEGIN
    SELECT * FROM employees
    LIMIT 1000;
END$$
DELIMITER ;

CALL employees.select_employees();

/* we've USE the database in the beginning so can skip the database name here */
CALL select_employees();