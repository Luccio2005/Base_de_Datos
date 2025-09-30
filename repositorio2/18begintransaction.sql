USE Chinook
GO 

BEGIN TRANSACTION;

INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Email, SupportRepId)
VALUES (9999, 'Prueba', 'Rollback', 'Test Inc', 'Calle Falsa 123', 'Lima', 'Lima', 'Peru', '15000', '999999999', 'rollback@test.com', 3);

-- Verificar dentro de la transacción
SELECT * FROM Customer WHERE CustomerId = 9999;

-- Deshacer
ROLLBACK;

-- Ya no debería existir
SELECT * FROM Customer WHERE CustomerId = 9999;