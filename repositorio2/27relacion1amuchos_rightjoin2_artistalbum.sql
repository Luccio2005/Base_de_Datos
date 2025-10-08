USE Chinook
GO

SELECT 
    a.ArtistId,
    a.Name AS ArtistName,
    al.AlbumId,
    al.Title AS AlbumTitle
FROM Artist AS a
RIGHT JOIN Album AS al
    ON a.ArtistId = al.ArtistId
ORDER BY al.AlbumId;
