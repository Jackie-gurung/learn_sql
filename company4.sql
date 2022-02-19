 -- UNION
 
 -- find the list of all money spent and earned by the company 
 SELECT salary 
 FROM employee
 UNION 
 SELECT total_sales 
 FROM works_with;
 
 -- find all branch and the name of their manager
 SELECT employee.emp_id,  employee.first_name,  branch.branch_name -- branch.mgr_id
 FROM employee
 RIGHT JOIN branch
 ON employee.emp_id = branch.mgr_id; 
 
 -- three types of JOIN 
 -- normal /inner JOIN = shared column 
 -- LEFT JOIN   = include all row from left table 
  -- RIGHT JOIN   = include all row from right table 
  -- FULL OUTER JOIN = both left and right  (not available in mysql)
  
  -- find the name of allemployees that have sold more than 30K to a single client
  SELECT employee.first_name , employee.last_name ,works_with.emp_id
  FROM employee
  JOIN works_with
  ON employee.emp_id = works_with.emp_id
  WHERE works_with.total_sales > 30000;

 
 
 
 INSERT INTO branch VALUES(4,'buffalo', NULL, NULL);
 
 SELECT *
 FROM branch;