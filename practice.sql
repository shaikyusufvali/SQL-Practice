CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    department VARCHAR(30),
    city VARCHAR(30),
    salary INT,
    experience INT,
    joining_year INT
);

INSERT INTO employees VALUES
(101,'Rahul','Male',25,'IT','Hyderabad',50000,2,2023),
(102,'Amit','Male',30,'HR','Delhi',45000,5,2020),
(103,'Priya','Female',27,'Finance','Bangalore',60000,4,2021),
(104,'Sara','Female',32,'HR','Hyderabad',70000,8,2017),
(105,'John','Male',29,'IT','Chennai',65000,6,2019),
(106,'Anjali','Female',24,'Marketing','Mumbai',48000,2,2023),
(107,'Kiran','Male',31,'Sales','Hyderabad',55000,7,2018),
(108,'Neha','Female',26,'IT','Pune',52000,3,2022),
(109,'Ravi','Male',35,'Finance','Delhi',75000,10,2015),
(110,'Pooja','Female',28,'Marketing','Hyderabad',51000,4,2021),
(111,'Arjun','Male',27,'Sales','Bangalore',47000,3,2022),
(112,'Meena','Female',33,'HR','Chennai',68000,9,2016),
(113,'Vikram','Male',29,'IT','Mumbai',62000,5,2020),
(114,'Divya','Female',30,'Finance','Pune',58000,6,2019),
(115,'Suresh','Male',26,'Marketing','Hyderabad',49000,2,2023);

SELECT * FROM employees;
select * from employees
where salary > 50000;
select * from employees
where emp_id = 111;
select emp_name,department,salary from employees;
select distinct department from employees;
select distinct city from employees;
select * from employees
where salary > 60000;
select * from employees
where salary > 30;
# and
select * from employees
where city ='hyderabad'
and salary>50000;
SELECT *
FROM employees
WHERE gender='Male'
AND department='Sales';
SELECT *
FROM employees
WHERE salary>55000
AND age<30;
SELECT *
FROM employees
WHERE department='HR'
OR department='Finance';
SELECT *
FROM employees
WHERE department IN ('IT','HR','Marketing');
select * from employees
where city in ('Hyderabad','Pune','Chennai');
SELECT * FROM employees
WHERE salary BETWEEN 50000 AND 70000;
SELECT * FROM employees
WHERE emp_name LIKE 'A%';
SELECT * FROM employees
WHERE emp_name LIKE '%a';
SELECT * FROM employees
WHERE emp_name LIKE '%ra%';
SELECT * FROM employees
WHERE emp_name LIKE '______';


