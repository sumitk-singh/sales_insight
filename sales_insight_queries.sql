

-- 1. List all regions:
SELECT * FROM Regions;

-- 2. Count number of regions:
SELECT COUNT(*) AS RegionCount FROM Regions;

-- 3. List managers in alphabetical order:
SELECT Manager FROM Regions 
ORDER BY Manager;

-- 4. Find customers who joined after 2022-01-01:
SELECT * FROM Customers 
WHERE JoinDate > '2022-01-01';

-- 5. List all products in the “Electronics” category:
SELECT * FROM Products 
WHERE Category IN( 'Electronics');

-- 6. List all products that do not belong to “Electronics” category:
SELECT * FROM Products 
WHERE Category NOT IN ('Electronics');

-- 7.Count products per category:
SELECT Category, COUNT(*) AS ProductCount FROM Products 
GROUP BY Category;

-- 8.Find products priced above 5000:
SELECT * FROM Products 
WHERE UnitPrice > 5000;




