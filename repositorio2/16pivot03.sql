USE Chinook
GO

SELECT SupportRepId, [2009], [2010], [2011], [2012]
FROM (
    SELECT c.SupportRepId, YEAR(i.InvoiceDate) AS YearInvoice, i.Total
    FROM Customer c
    INNER JOIN Invoice i ON c.CustomerId = i.CustomerId
) AS SourceTable
PIVOT (
    SUM(Total) FOR YearInvoice IN ([2009], [2010], [2011], [2012])
) AS PivotTable;
