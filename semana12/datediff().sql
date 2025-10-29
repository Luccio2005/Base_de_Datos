USE Chinook
GO

SELECT 
    InvoiceId,
    CustomerId,
    InvoiceDate,
    DATEDIFF(DAY, InvoiceDate, GETDATE()) AS DiasDesdeFactura
FROM Invoice
ORDER BY InvoiceDate;
