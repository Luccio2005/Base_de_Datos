USE Chinook
GO 

SELECT 
    FirstName,
    UPPER(FirstName) AS NombreMayusculas
FROM Customer;
