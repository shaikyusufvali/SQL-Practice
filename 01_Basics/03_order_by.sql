USE practicedb;

SELECT *
FROM dbo.orders;

SELECT TOP 1 *
FROM dbo.orders;

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'orders';

SELECT TOP 10 *
FROM orders
ORDER BY Discount_percent DESC;

SELECT *
FROM dbo.orders
ORDER BY Total_Amount DESC;

SELECT TOP 10 *
FROM dbo.orders
ORDER BY Total_Amount DESC;

SELECT *
FROM dbo.orders
ORDER BY Total_Amount ASC;

SELECT *
FROM dbo.orders
ORDER BY Total_Amount DESC, Quantity DESC;