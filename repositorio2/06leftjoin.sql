USE Chinook
GO

SELECT c.CustomerId, c.FirstName, c.LastName, i.InvoiceId, i.Total
FROM Customer c
LEFT JOIN Invoice i ON c.CustomerId = i.CustomerId
ORDER BY c.LastName;