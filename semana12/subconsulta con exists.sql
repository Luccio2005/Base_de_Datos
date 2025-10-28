USE Chinook
GO

SELECT 
    c.CustomerId,
    c.FirstName + ' ' + c.LastName AS NombreCliente
FROM Customer c
WHERE EXISTS (
    SELECT 1
    FROM Invoice i
    WHERE i.CustomerId = c.CustomerId
);
