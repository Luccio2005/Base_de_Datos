USE Chinook
GO

SELECT 
    InvoiceId,
    CustomerId,
    InvoiceDate,
    Total
FROM Invoice
WHERE MONTH(InvoiceDate) = 1
ORDER BY InvoiceDate;
