CREATE DATABASE StudentDB;

USE StudentDB;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    course VARCHAR(50),
    city VARCHAR(50),
    marks INT,
    admission_date DATE
);
INSERT INTO Students VALUES
(101,'Rahul',20,'Male','Python','Hyderabad',85,'2025-01-10'),
(102,'Priya',21,'Female','Java','Bangalore',92,'2025-02-15'),
(103,'Arjun',22,'Male','Python','Chennai',78,'2025-03-20'),
(104,'Sneha',20,'Female','SQL','Hyderabad',88,'2025-01-25'),
(105,'Kiran',23,'Male','Java','Mumbai',65,'2025-04-18'),
(106,'Anu',21,'Female','Python','Hyderabad',95,'2025-02-28'),
(107,'Vijay',22,'Male','SQL','Chennai',72,'2025-05-05'),
(108,'Meena',20,'Female','Java','Bangalore',81,'2025-06-10'),
(109,'Ravi',23,'Male','Python','Hyderabad',69,'2025-03-12'),
(110,'Divya',21,'Female','SQL','Mumbai',90,'2025-07-01');
select * from Students;
select student_name,marks from Students;
select * from Students
where marks > 85;
select * from Students
where city = 'Hyderabad'
select * from Students
where course = 'Python';
select * from Students
where age > 21;
select * from Students
where marks between 85 and 90;
select * from Students
where student_name like '%a';
select * from Students
where student_name like '%A';
SELECT COUNT(*) AS total_students
FROM Students;
select max(marks) as total_marks
from Students;
select min(marks) as total_marks
from Students;

select avg(marks) as total_marks
from Students;
SELECT course,
       AVG(marks) AS average_marks
FROM Students
GROUP BY course;
SELECT course,
       AVG(marks) AS average_marks
FROM Students
GROUP BY course
HAVING AVG(marks) > 80;
SELECT course,
       MAX(marks) AS highest_marks
FROM Students
GROUP BY course
having max(marks) > 92;
SELECT city,
       AVG(marks) AS av_marks
FROM Students
GROUP BY city
HAVING AVG(marks) > 75;