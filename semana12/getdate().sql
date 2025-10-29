USE Chinook
GO

SELECT 
    CustomerId,
    MIN(InvoiceDate) AS PrimeraCompra,
    DATEDIFF(YEAR, MIN(InvoiceDate), GETDATE()) AS A�osComoCliente
FROM Invoice
GROUP BY CustomerId
ORDER BY A�osComoCliente DESC;
