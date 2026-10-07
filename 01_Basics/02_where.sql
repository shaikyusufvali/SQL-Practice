USE practicedb;

SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES;


-- WHERE CLAUSE

USE practicedb;


-- 1. Equal to
SELECT *
FROM dbo.orders
WHERE City = 'Delhi';


-- 2. Not equal to
SELECT *
FROM dbo.orders
WHERE City <> 'Delhi';


-- 3. AND



-- 4. OR
SELECT *
FROM dbo.orders
WHERE City = 'Delhi'
OR City = 'Kolkata';


-- 5. IN
SELECT *
FROM dbo.orders
WHERE City IN ('Delhi', 'Kolkata', 'Vijayawada');


-- 6. NOT IN
SELECT *
FROM dbo.orders
WHERE City NOT IN ('Delhi', 'Kolkata');


-- 7. LIKE - starts with
SELECT *
FROM dbo.orders
WHERE City LIKE 'V%';


-- 8. LIKE - ends with
SELECT *
FROM dbo.orders
WHERE City LIKE '%a';


-- 9. LIKE - contains
SELECT *
FROM dbo.orders
WHERE City LIKE '%del%';


-- 10. Category filter
SELECT *
FROM dbo.orders
WHERE Category = 'Clothing';


-- 11. Gender filter
SELECT *
FROM dbo.orders
WHERE Gender = 'Male';


-- 12. Multiple conditions
SELECT *
FROM dbo.orders
WHERE Gender = 'Female'
AND Category = 'Groceries';


-- 13. Date greater than
SELECT *
FROM dbo.orders
WHERE Order_Date > '2025-01-01';


-- 14. Date less than
SELECT *
FROM dbo.orders
WHERE Order_Date < '2026-01-01';


-- 15. Date range
SELECT *
FROM dbo.orders
WHERE Order_Date BETWEEN '2025-01-01' AND '2025-12-31';


-- 16. Customer ID
SELECT *
FROM dbo.orders
WHERE Customer_ID = 'CUST1028';


-- 17. Multiple OR conditions
SELECT *
FROM dbo.orders
WHERE City = 'Delhi'
OR City = 'Bengaluru'
OR City = 'Kolkata';


-- 18. AND + OR
SELECT *
FROM dbo.orders
WHERE (City = 'Delhi' OR City = 'Kolkata')
AND Gender = 'Female';