USE Chinook
GO

SELECT 
    InvoiceId,
    InvoiceDate AS FechaOriginal,
    CONVERT(VARCHAR(10), InvoiceDate, 120) AS FechaTexto
FROM Invoice;
