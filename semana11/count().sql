USE Chinook
GO

SELECT 
    c.CustomerId,
    c.FirstName + ' ' + c.LastName AS CustomerName,
    COUNT(i.InvoiceId) AS CantidadFacturas
FROM Customer c
LEFT JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName
ORDER BY CantidadFacturas DESC;
