-- Delete a table
DROP TABLE student;

CREATE TABLE student(
	student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided' -- UNIQUE
    -- PRIMARY KEY (student_id)
);

-- Describe the content of the table 
DESCRIBE student;

-- Add another column -- alter a table
ALTER TABLE student ADD gpa DECIMAL(3,2);
-- alter a column
ALTER TABLE student DROP COLUMN gpa; 



-- Data Insertion
INSERT INTO student(name, major) VALUES('jackie', 'CS');
INSERT INTO student(name, major) VALUES('vinie', 'ES');
INSERT INTO student(name, major) VALUES('jac', 'Biology');
INSERT INTO student(student_id, name, major) VALUES(3,'pema', 'pharma');
-- Data insertion optional
INSERT INTO student(student_id, name) VALUES(2, 'jack');

-- Update Table 
Update student 
SET major = 'pharmacy'
WHERE major = 'ES';

Update student 
SET major = 'chemistry'
WHERE major = 'CS' OR major = 'pharma';

UPDATE student 
SET major = 'civil Engineering' , name = 'lama'
WHERE student_id = 4;

-- delete a row 
DELETE FROM student 
WHERE student_id = 3;

SELECT * FROM student;


