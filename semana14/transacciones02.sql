USE Chinook
GO

BEGIN TRANSACTION;

UPDATE Customer
SET Country = 'Atlantis'
WHERE Country = 'Brazil';

-- Revisamos lo que cambiaría
SELECT CustomerId, FirstName, Country
FROM Customer
WHERE Country = 'Atlantis';

-- Oh no, esto está mal 😅
ROLLBACK;

-- Confirmamos que se revirtió
SELECT CustomerId, FirstName, Country
FROM Customer
WHERE Country = 'Brazil';
