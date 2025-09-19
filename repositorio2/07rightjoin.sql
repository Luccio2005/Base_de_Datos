USE Chinook
GO

SELECT ar.ArtistId, ar.Name AS Artist, al.Title AS Album
FROM Artist ar
RIGHT JOIN Album al ON ar.ArtistId = al.ArtistId
ORDER BY al.Title;