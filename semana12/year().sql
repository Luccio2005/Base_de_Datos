USE Chinook
GO

SELECT 
    InvoiceId,
    CustomerId,
    InvoiceDate,
    Total
FROM Invoice
WHERE YEAR(InvoiceDate) = 2022
ORDER BY InvoiceDate;
