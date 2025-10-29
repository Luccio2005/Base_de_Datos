USE Chinook
GO

SELECT 
    CustomerId,
    CONCAT(FirstName, ' ', LastName) AS NombreCompleto
FROM Customer;
