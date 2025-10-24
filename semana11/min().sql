USE Chinook
GO 

SELECT 
    c.CustomerId,
    c.FirstName + ' ' + c.LastName AS CustomerName,
    MIN(i.Total) AS FacturaMasBaja
FROM Customer c
INNER JOIN Invoice i 
    ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName
ORDER BY FacturaMasBaja ASC;
