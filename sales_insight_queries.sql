

-- 1. List all regions:
SELECT * FROM Regions;

-- 2. Count number of regions:
SELECT COUNT(*) AS RegionCount FROM Regions;

-- 3. List managers in alphabetical order:
SELECT Manager FROM Regions ORDER BY Manager;
