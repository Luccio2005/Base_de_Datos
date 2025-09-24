USE Chinook
GO 

SELECT Country, [2009], [2010], [2011], [2012]
FROM (
    SELECT c.Country, YEAR(i.InvoiceDate) AS YearInvoice, i.InvoiceId
    FROM Customer c
    INNER JOIN Invoice i ON c.CustomerId = i.CustomerId
) AS SourceTable
PIVOT (
    COUNT(InvoiceId) FOR YearInvoice IN ([2009], [2010], [2011], [2012])
) AS PivotTable;