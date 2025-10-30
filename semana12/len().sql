USE Chinook
GO

SELECT 
    FirstName,
    LEN(FirstName) AS LongitudNombre
FROM Customer;
