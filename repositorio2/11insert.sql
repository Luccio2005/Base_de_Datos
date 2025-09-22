USE Chinook
GO

-- Primero creamos la tabla temporal (si no existe)
CREATE TABLE ClientesUSA (
    CustomerId INT,
    FirstName NVARCHAR(40),
    LastName NVARCHAR(20),
    Country NVARCHAR(40)
);

-- Ahora insertamos con SELECT
INSERT INTO ClientesUSA (CustomerId, FirstName, LastName, Country)
SELECT CustomerId, FirstName, LastName, Country
FROM Customer
WHERE Country = 'USA';

