USE Chinook
GO

SELECT c.FirstName, c.LastName, p.Country
FROM Customer c
CROSS JOIN (SELECT DISTINCT Country FROM Customer) p 
ORDER BY c.LastName, p.Country;