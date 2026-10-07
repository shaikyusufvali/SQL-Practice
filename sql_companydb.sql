create database companyDB;
use companyDB;
select * from Employees;
select * from employees
limit 10;

select max(salary) from employees
SELECT emp_name, department
FROM Employees
WHERE department = 'IT';
select * from employees
where salary between 60000 and 70000;
select * from employees
order by salary desc;

SELECT emp_name, department, salary
FROM Employees
ORDER BY emp_name, department, salary ASC;
select department, sum(salary) as deparment_avg
from employees
group by department;

select * from employees
where department IN ('IT', 'HR');

SELECT DISTINCT department
FROM Employees;
SELECT department,
       AVG(salary) AS avg_employee
FROM Employees
GROUP BY department
HAVING AVG(salary) > 60000;
SELECT *
FROM Employees
ORDER BY salary ASC;
select emp_name, salary
from employees;
select * from employees
where salary > 60000;
select * from employees
where department ="IT"
select * from employees
where gender = "Male";
select * from employees
order by salary desc;
select * from employees
order by salary asc;
select * from employees
where salary between 50000 and 80000;
select * from employees
where department in('IT','HR');
select * from Employees
where emp_name like '%it%';
select distinct department
from Employees;
select salary,count(*) as total_salary
from Employees
group by salary;
select sum(salary) as avg_salary
from Employees;
select department,max(salary) as high_salary
from Employees
group by department;
SELECT department,
AVG(salary) AS average_salary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 60000;
SELECT department,
       SUM(salary) AS total_salary
FROM Employees
GROUP BY department
HAVING SUM(salary) > 150000;
SELECT department,
       MIN(salary) AS lowest_salary
FROM Employees
GROUP BY department
HAVING MIN(salary) > 45000;
SELECT department,
       COUNT(*) AS total_employees
FROM Employees
GROUP BY department
HAVING COUNT(*) > 35;
INSERT INTO Employees
VALUES (9,'Ahmed',27,'Male','IT',68000,'2025-08-01');
UPDATE Employees
SET salary = 70000
WHERE emp_id = 1;
DELETE FROM Employees
WHERE department = 'HR';
DESCRIBE Employees;
update Employees
set salary = 85000
where emp_id = 3;