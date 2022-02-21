DELETE FROM employee
WHERE emp_id = 102;

-- trigger

CREATE TABLE trigger_test1 (
     message VARCHAR(100)
);

DELIMITER $$
CREATE 
	TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN 
		INSERT INTO trigger_test VALUES ('Added new employee');
	END$$
DELIMITER ;

INSERT INTO employee
VALUES(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

INSERT INTO employee
VALUES(110, 'Kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3);


DELIMITER $$
CREATE
    TRIGGER my_trigger1 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
         IF NEW.sex = 'M' THEN
               INSERT INTO trigger_test1 VALUES('added male employee');
         ELSEIF NEW.sex = 'F' THEN
               INSERT INTO trigger_test1 VALUES('added female');
         ELSE
               INSERT INTO trigger_test1 VALUES('added other employee');
         END IF;
    END$$
DELIMITER ;
INSERT INTO employee
VALUES(111, 'Pam', 'Beesly', '1988-02-19', 'F', 69000, 106, 3);

-- deleting a trigger so that it is no longer active
DROP TRIGGER my_trigger;
SELECT *
FROM trigger_test1;