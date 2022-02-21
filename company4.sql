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
  
  -- nested approach
  SELECT employee.first_name , employee.last_name
  FROM employee 
  WHERE employee.emp_id IN (
	SELECT works_with.emp_id
    FROM works_with
    WHERE works_with.total_sales > 30000
  );
  
  -- find all the clients who are handled by the branch that michel scott manages
  -- assume you know michel's ID
  SELECT client_name 
  FROM client
  JOIN employee
  ON employee.branch_id = client.branch_id 
  WHERE employee.emp_id = 102;
  
  
  
  -- nested approach 
  SELECT client.client_name
  FROM client
  WHERE client.branch_id = (
	  SELECT branch.branch_id
	  FROM branch
	  WHERE branch.mgr_id = 102
	  LIMIT 1
  );
  
  

 
 
 
 INSERT INTO branch VALUES(4,'buffalo', NULL, NULL);
 
 SELECT *
 FROM works_with;
