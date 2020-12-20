#######################
-- MySQL Triggers - exercise
######################alter

/*
Create a trigger that checks if the hire date of an employee is higher than the current date. 
If true, set this date to be the current date. Format the output appropriately (YY-MM-DD).
*/

USE employees;


DELIMITER $$

DROP TRIGGER IF EXISTS before_employees_hire_date;

CREATE TRIGGER before_employees_hire_date
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
    
	IF NEW.hire_date > date_format(sysdate(),'%y-%m-%d')
    THEN
	SET NEW.hire_date = date_format(SYSDATE(), '%y-%m-%d');
    END IF;
END $$
DELIMITER ;

INSERT employees VALUES ('999904', '1970-01-31', 'John', 'Johnson', 'M', '2025-01-01');

SELECT  
    *  
FROM  
    employees
ORDER BY emp_no DESC;