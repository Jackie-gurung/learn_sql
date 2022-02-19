-- find all employees 
SELECT * 
FROM employee;

-- find all employees ordered by salary
SELECT * 
FROM employee
ORDER BY salary ;

-- find all employees ordered by sex then name
SELECT * 
FROM employee
ORDER BY sex, first_name, last_name;

-- find the first 5 employee
SELECT * 
FROM  employee 
LIMIT 5;

-- find forename and surname
SELECT first_name AS forename, last_name AS surname
FROM employee;

-- find out all the genders
SELECT DISTINCT sex 
FROM employee;

-- find the number of employee
SELECT COUNT(emp_id)
FROM employee;

-- find the number of female employee born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex='F' AND birth_date > '1970-01-01';

-- find the average of all employee salaries 
SELECT AVG(salary)
FROM employee;

-- find the average of male employee salaries 
SELECT AVG(salary)
FROM employee
WHERE sex='M';

-- find the sum of all employee salaries 
SELECT SUM(salary)
FROM employee; 

-- AGGREGATION 

-- how many males and female employee are there
SELECT COUNT(sex), sex 
FROM employee
GROUP BY sex;

-- find the total sales of each salesman
SELECT SUM(total_sales) , emp_id
FROM works_with
GROUP BY emp_id;

-- find how much money each client spends

SELECT SUM(total_sales) , client_id
FROM works_with
GROUP BY client_id;


-- wild cards 
-- % = any character and _ = one character 

-- find any client who are an LLC
SELECT * 
FROM client
WHERE client_name LIKE '%LLC';

-- find any business who are in label business
SELECT * 
FROM branch_supplier
WHERE supplier_name LIKE '%labels';

-- find any employee born in october
SELECT * 
FROM employee 
WHERE birth_date LIKE '%-10-%';

-- find any clients who are schools
 SELECT * 
 FROM client
 WHERE client_name LIKE '%school';



