USE Chinook
GO 

SELECT t.TrackId, t.Name AS TrackName, al.Title AS Album, ar.Name AS Artist
FROM Track t
INNER JOIN ALbum al ON t.AlbumId = al.AlbumId
INNER JOIN Artist ar ON al.ArtistId = ar.ArtistId;
