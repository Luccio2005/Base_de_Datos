USE Chinook
GO

SELECT Country
FROM Customer
UNION
SELECT Country
FROM Employee
ORDER BY Country;