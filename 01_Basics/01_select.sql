-- SELECT BASICS

USE practicedb;


-- 1. Select all columns

SELECT *
FROM dbo.orders;


-- 2. Select top 10 rows

SELECT TOP 10 *
FROM dbo.orders;


-- 3. Select specific columns

SELECT
    Order_ID,
    Customer_ID,
    City
FROM dbo.orders;


-- 4. Select multiple columns

SELECT
    Order_ID,
    Customer_ID,
    City,
    Category
FROM dbo.orders;


-- 5. Change column names using AS

SELECT
    Order_ID AS OrderNumber,
    Customer_ID AS CustomerNumber
FROM dbo.orders;


-- 6. Remove duplicate values using DISTINCT

SELECT DISTINCT City
FROM dbo.orders;


-- 7. DISTINCT with multiple columns

SELECT DISTINCT
    City,
    Category
FROM dbo.orders;


-- 8. Top 5 rows

SELECT TOP 5 *
FROM dbo.orders;


-- 9. Top 10 percent rows

SELECT TOP 10 PERCENT *
FROM dbo.orders;


-- 10. Rename multiple columns

SELECT
    Order_ID AS OrderNumber,
    Customer_ID AS CustomerNumber,
    City AS CustomerCity,
    Category AS ProductCategory
FROM dbo.orders;


-- 11. Select columns with a calculated value

SELECT
    Order_ID,
    Customer_ID,
    100 AS FixedValue
FROM dbo.orders;