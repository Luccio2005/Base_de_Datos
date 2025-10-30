USE Chinook
GO

SELECT 
    Email,
    LOWER(Email) AS EmailMinusculas
FROM Customer;
