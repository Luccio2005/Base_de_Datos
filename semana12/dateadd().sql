USE Chinook
GO

SELECT 
    InvoiceId,
    CustomerId,
    InvoiceDate,
    DATEADD(DAY, 30, InvoiceDate) AS FechaVencimiento,
    Total
FROM Invoice
ORDER BY InvoiceDate;
