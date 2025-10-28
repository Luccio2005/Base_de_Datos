USE Chinook
GO

SELECT 
    c.CustomerId,
    c.FirstName + ' ' + c.LastName AS NombreCliente
FROM Customer c
WHERE c.CustomerId IN (
    SELECT DISTINCT i.CustomerId
    FROM Invoice i
    INNER JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
    INNER JOIN Track t ON il.TrackId = t.TrackId
    INNER JOIN Genre g ON t.GenreId = g.GenreId
    WHERE g.Name = 'Rock'
)
ORDER BY NombreCliente;
