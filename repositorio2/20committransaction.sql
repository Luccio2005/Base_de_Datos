USE Chinook
GO

BEGIN TRANSACTION;

INSERT INTO Playlist (Name)
VALUES ('Nueva Playlist COMMIT');

-- Confirmamos los cambios
COMMIT TRANSACTION;
PRINT 'Se insertó correctamente la nueva playlist';
