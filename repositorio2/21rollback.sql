USE Chinook
GO 

BEGIN TRANSACTION;

-- Insertamos un registro de prueba
INSERT INTO Playlist (Name)
VALUES ('Playlist de Prueba ROLLBACK');

-- Ahora verificamos dentro de la transacción
SELECT * FROM Playlist WHERE Name = 'Playlist de Prueba ROLLBACK';

-- Decidimos revertir
ROLLBACK TRANSACTION;

-- Verificamos nuevamente (el registro ya no debe existir)
SELECT * FROM Playlist WHERE Name = 'Playlist de Prueba ROLLBACK';
