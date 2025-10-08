USE Chinook
GO

SELECT 
    c.CustomerId,
    c.FirstName + ' ' + c.LastName AS CustomerName,
    i.InvoiceId,
    i.InvoiceDate,
    i.Total
FROM Customer AS c
RIGHT JOIN Invoice AS i
    ON c.CustomerId = i.CustomerId
ORDER BY i.InvoiceId;
