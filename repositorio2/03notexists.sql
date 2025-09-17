USE Chinook
GO

SELECT a.ArtistId, a.Name AS Artist
FROM Artist a
WHERE NOT EXISTS(SELECT 1 FROM Album al WHERE al.ArtistId = a.ArtistId);
