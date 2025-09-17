USE Chinook
GO

SELECT i.InvoiceId, i.InvoiceDate, i.Total, i.CustomerId
FROM Invoice i
WHERE i.CustomerId IN (SELECT c.CustomerId FROM Customer c WHERE c.Country= 'Brazil');