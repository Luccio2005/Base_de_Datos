USE Bank
GO

SELECT ID, COUNT(*) AS NumeroClientes
FROM Client 
GROUP BY ID;