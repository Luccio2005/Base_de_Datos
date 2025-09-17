USE Chinook
GO

SELECT c.CustomerId, c.FirstName, c.LastName, c.Email
FROM Customer c
WHERE EXISTS( SELECT 1 FROM Invoice i WHERE i.CustomerId = c.CustomerId);
