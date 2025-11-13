USE Chinook
GO

BEGIN TRANSACTION;

-- Primera actualización
UPDATE Customer
SET Country = 'Argentina'
WHERE Country = 'Brazil';

SAVE TRANSACTION Punto1; -- Guardamos este punto

-- Segunda actualización
UPDATE Customer
SET Country = 'Chile'
WHERE Country = 'Canada';

-- Revisamos resultados temporales
SELECT CustomerId, FirstName, Country
FROM Customer
WHERE Country IN ('Argentina', 'Chile');

-- Decidimos deshacer solo la segunda parte
ROLLBACK TRANSACTION Punto1;

-- Verificamos nuevamente (solo quedan los cambios de la primera parte)
SELECT CustomerId, FirstName, Country
FROM Customer
WHERE Country IN ('Argentina', 'Chile');

COMMIT;
