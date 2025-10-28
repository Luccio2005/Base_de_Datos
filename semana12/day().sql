USE Chinook
GO

SELECT 
    InvoiceId,
    CustomerId,
    InvoiceDate,
    Total
FROM Invoice
WHERE DAY(InvoiceDate) = 15
ORDER BY InvoiceDate;
