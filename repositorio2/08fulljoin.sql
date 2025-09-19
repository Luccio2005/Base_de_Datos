USE Chinook
GO

SELECT c.CustomerId, c.FirstName, c.LastName,
i.InvoiceId, i.Total, i.InvoiceDate
FROM Customer c
FULL JOIN Invoice i ON c.CustomerId = i.CustomerId
ORDER BY c.CustomerId, i.InvoiceDate;