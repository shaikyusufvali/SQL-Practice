CREATE TABLE SQL_Practice_Advanced (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(30),
    City VARCHAR(30),
    Salary INT,
    SalesAmount INT,
    Status VARCHAR(20),
    Experience INT
);
INSERT INTO SQL_Practice_Advanced
(EmployeeID, EmployeeName, Department, City, Salary, SalesAmount, Status, Experience)
VALUES
(1, 'Rahul',  'IT',        'Hyderabad', 60000, 150000, 'Completed', 5),
(2, 'Priya',  'IT',        'Chennai',   75000, 200000, 'Completed', 7),
(3, 'Arjun',  'IT',        'Hyderabad', 75000, 180000, 'Pending',   6),
(4, 'Sneha',  'HR',        'Bengaluru', 45000,  80000, 'Completed', 3),
(5, 'Kiran',  'HR',        'Hyderabad', 55000,  95000, 'Completed', 5),
(6, 'Ananya', 'Sales',     'Chennai',   65000, 250000, 'Completed', 6),
(7, 'Vikram', 'Sales',     'Hyderabad', 65000, 220000, 'Pending',   4),
(8, 'Neha',   'Sales',     'Bengaluru', 50000, 220000, 'Completed', 3),
(9, 'Imran',  'Marketing', 'Pune',      70000, 190000, 'Completed', 8),
(10,'Pooja',  'Marketing', 'Hyderabad', 70000, 210000, 'Pending',   7),
(11,'Asha',   'IT',        'Chennai',   50000, 120000, 'Completed', 2),
(12,'Ravi',   'HR',        'Pune',      45000,  85000, 'Cancelled', 2),
(13,'Meena',  'Sales',     'Hyderabad', 80000, 300000, 'Completed', 9),
(14,'Karthik','Marketing', 'Chennai',   60000, 175000, 'Completed', 5),
(15,'Divya',  'IT',        'Bengaluru', 60000, 160000, 'Pending',   4),
(16,'Suresh', 'Sales',     'Pune',      55000, 140000, 'Cancelled', 3),
(17,'Farah',  'HR',        'Chennai',   60000, 100000, 'Completed', 6),
(18,'Manoj',  'Marketing', 'Hyderabad', 70000, 190000, 'Completed', 6),
(19,'Kavya',  'IT',        'Pune',      75000, 230000, 'Completed', 7),
(20,'Yusuf',  'Sales',     'Bengaluru', 80000, 280000, 'Pending',   8);
SELECT *
FROM SQL_Practice_Advanced;


SELECT *
FROM SQL_Practice_Advanced
order by salary desc;



SELECT
EmployeeName,
Department,
Salary,
RANK() OVER (ORDER BY Salary DESC) AS Salary_Rank
FROM SQL_Practice_Advanced;

select EmployeeName,
Department,
Salary,
DENSE_RANK() OVER(order by salary desc) as salary_Rank
from SQL_Practice_Advanced;
WITH EmployeeRanking AS (
SELECT
EmployeeName,
Department,
Salary,
ROW_NUMBER() OVER (
ORDER BY Salary DESC, EmployeeID ASC
) AS Row_Num
FROM SQL_Practice_Advanced;


WITH EmployeeRanking AS (
SELECT
EmployeeName,
Department,
Salary,
ROW_NUMBER() OVER (
ORDER BY Salary DESC, EmployeeID ASC
) AS Row_Num
FROM SQL_Practice_Advanced
)
SELECT EmployeeName, Department, Salary
FROM EmployeeRanking
WHERE Row_Num <= 3;

SELECT
EmployeeName,
Department,
Salary,
DENSE_RANK() OVER (
PARTITION BY Department
ORDER BY Salary DESC
) AS Salary_Rank
FROM SQL_Practice_Advanced;

WITH RankedEmployees AS (
SELECT
EmployeeID,
EmployeeName,
Department,
Salary,
ROW_NUMBER() OVER (
PARTITION BY Department
ORDER BY Salary DESC, EmployeeID ASC
) AS RowNum
FROM SQL_Practice_Advanced
)
SELECT EmployeeName, Department, Salary
FROM RankedEmployees
WHERE RowNum <= 2;


WITH SalaryRanking AS (
SELECT
EmployeeName,
Department,
Salary,
DENSE_RANK() OVER (
ORDER BY Salary DESC
) AS SalaryRank
FROM SQL_Practice_Advanced
)
SELECT EmployeeName, Department, Salary
FROM SalaryRanking
WHERE SalaryRank = 2;


SELECT
EmployeeName,
Department,
Salary,
AvgSalary
FROM (
SELECT
EmployeeName,
Department,
Salary,
AVG(CAST(Salary AS DECIMAL(10,2)))
OVER (PARTITION BY Department) AS AvgSalary
FROM SQL_Practice_Advanced
) AS EmployeeData
WHERE Salary > AvgSalary;


select * from SQL_Practice_Advanced
where salary > 65000

SELECT EmployeeName, City, Salary
FROM SQL_Practice_Advanced
WHERE City = 'Hyderabad'
ORDER BY Salary DESC;

select Department,count(*) as Total_EMPS
from SQL_Practice_Advanced
group by Department;

select Department,avg(salary) as Average_sal
from SQL_Practice_Advanced
group by Department;

select Department,avg(salary) as Average_sal
from SQL_Practice_Advanced
group by Department
having avg(salary) > 70000;

SELECT EmployeeName, Department, Status
FROM SQL_Practice_Advanced
WHERE Status = 'Completed';
