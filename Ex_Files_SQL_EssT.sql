SELECT *
FROM student 
ORDER BY student_id  DESC;

SELECT *
FROM student 
ORDER BY name, student_id  ASC LIMIT 3;

SELECT *
FROM student 
WHERE name = 'vinie' AND major = 'ES';

SELECT *
FROM student 
WHERE name = 'vinie' OR major = 'ES';

SELECT *student_id
FROM student 
WHERE student_id <> 2;

SELECT *
FROM student 
WHERE major IN ('pharmacy','biology', 'chemistry');
 -- DESC, ASC, LIMIT, ORDER BY, IN , 
 -- < , > , <>, <= , >= , = , AND, OR