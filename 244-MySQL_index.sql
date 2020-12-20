
/* Index:
The index of a table functions like a index of the book.
-- data is taken from a column of the table and is sorted in a certain order in a distinct place, 
called index
-- We can use an index that will increase the speed of searches related to a table
*/

USE employees;

SELECT 
    *
FROM
    employees
WHERE
    hire_date > '2000-01-01'; # which takes 0.243 sec to get the result.

CREATE INDEX i_hire_date ON employees(hire_date);
# after executing the index syntax, the search query above will be much quicker, which only took 0.0015 sec


/* composite indexes::
it applies to multiple columns, not just a single one
*/

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Georgi'
        AND last_name = 'Facello'; # which took 0.127 sec to get the result
        
# try index again (below), then re-run the statement it will only take 0.0027 sec
CREATE INDEX i_composite ON employees(first_name, last_name);

/* check the index:
-- click "i" from the table then select the indexes tab
-- or the following syntax
*/

SHOW INDEX FROM employees FROM employees;
SHOW INDEX FROM employees;


/* Exercise 1:
Drop the ‘i_hire_date’ index.
*/

ALTER TABLE employees
DROP INDEX i_hire_date;

/* Exercise 2:
Select all records from the ‘salaries’ table of people whose salary is higher than $89,000 per annum.
Then, create an index on the ‘salary’ column of that table, 
and check if it has sped up the search of the same SELECT statement.
*/

SELECT 
    *
FROM
    salaries
WHERE
    salary > 89000;
    
CREATE INDEX i_salary ON salaries(salary);
