-- Create Database
CREATE DATABASE Company;

-- Use Database
USE Company;

-- Create Table
CREATE TABLE Employee (
    Emp_ID INT,
    Emp_Name VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);

-- Insert Records
INSERT INTO Employee VALUES
(101,'Rahul','HR',30000),
(102,'Ram','IT',45000),
(103,'John','Finance',50000),
(104,'Sai','IT',40000),
(105,'Priya','HR',35000);

-- Display All Records
SELECT * FROM Employee;

-- Display Employee Names
SELECT Emp_Name FROM Employee;

-- Employees with Salary > 40000
SELECT * FROM Employee
WHERE Salary > 40000;

-- Sort by Salary
SELECT * FROM Employee
ORDER BY Salary DESC;
