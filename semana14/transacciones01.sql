USE Chinook
GO

BEGIN TRANSACTION;

UPDATE Customer
SET Country = 'Peru'
WHERE CustomerId = 5;

-- Verificamos el cambio antes de confirmar
SELECT CustomerId, FirstName, LastName, Country
FROM Customer
WHERE CustomerId = 5;

-- Confirmamos los cambios
COMMIT;
