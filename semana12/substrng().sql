USE Chinook
GO

SELECT 
    LastName,
    SUBSTRING(LastName, 1, 3) AS PrimerasTresLetras
FROM Customer;
