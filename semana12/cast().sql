USE Chinook
GO

SELECT 
    InvoiceId,
    Total AS TotalOriginal,
    CAST(Total AS INT) AS TotalEntero
FROM Invoice;
