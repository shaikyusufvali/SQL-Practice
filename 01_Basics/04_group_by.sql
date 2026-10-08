USE practicedb;

-- 1. City-wise total orders
SELECT City, COUNT(*) AS Total_Orders
FROM dbo.orders
GROUP BY City;


-- 2. Category-wise total orders
SELECT Category, COUNT(*) AS Total_Orders
FROM dbo.orders
GROUP BY Category;


-- 3. Payment method-wise total orders
SELECT Payment_Method, COUNT(*) AS Total_Orders
FROM dbo.orders
GROUP BY Payment_Method;


-- 4. Customer type-wise total orders
SELECT Customer_Type, COUNT(*) AS Total_Orders
FROM dbo.orders
GROUP BY Customer_Type;


-- 5. Gender-wise total orders
SELECT Gender, COUNT(*) AS Total_Orders
FROM dbo.orders
GROUP BY Gender;


-- 6. City-wise total sales
SELECT City, SUM(Total_Amount) AS Total_Sales
FROM dbo.orders
GROUP BY City;


-- 7. Category-wise total sales
SELECT Category, SUM(Total_Amount) AS Total_Sales
FROM dbo.orders
GROUP BY Category;


-- 8. Category-wise average order amount
SELECT Category, AVG(Total_Amount) AS Average_Amount
FROM dbo.orders
GROUP BY Category;


-- 9. City-wise average order amount
SELECT City, AVG(Total_Amount) AS Average_Amount
FROM dbo.orders
GROUP BY City;


-- 10. Payment method-wise total sales
SELECT Payment_Method, SUM(Total_Amount) AS Total_Sales
FROM dbo.orders
GROUP BY Payment_Method;


-- 11. Category-wise total quantity
SELECT Category, SUM(Quantity) AS Total_Quantity
FROM dbo.orders
GROUP BY Category;


-- 12. City-wise total quantity
SELECT City, SUM(Quantity) AS Total_Quantity
FROM dbo.orders
GROUP BY City;


-- 13. Category-wise highest order amount
SELECT Category, MAX(Total_Amount) AS Highest_Amount
FROM dbo.orders
GROUP BY Category;


-- 14. Category-wise lowest order amount
SELECT Category, MIN(Total_Amount) AS Lowest_Amount
FROM dbo.orders
GROUP BY Category;


-- 15. City-wise sales: highest to lowest
SELECT City, SUM(Total_Amount) AS Total_Sales
FROM dbo.orders
GROUP BY City
ORDER BY Total_Sales DESC;