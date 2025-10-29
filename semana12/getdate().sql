USE Chinook
GO

SELECT 
    CustomerId,
    MIN(InvoiceDate) AS PrimeraCompra,
    DATEDIFF(YEAR, MIN(InvoiceDate), GETDATE()) AS AñosComoCliente
FROM Invoice
GROUP BY CustomerId
ORDER BY AñosComoCliente DESC;
