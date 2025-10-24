USE Chinook
GO

SELECT 
    c.CustomerId,
    c.FirstName + ' ' + c.LastName AS CustomerName,
    MAX(i.Total) AS FacturaMasAlta
FROM Customer c
INNER JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName
ORDER BY FacturaMasAlta DESC;
