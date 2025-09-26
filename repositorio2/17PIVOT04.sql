USE Chinook
GO

SELECT BillingCountry, [94117], [75001], [1010]
FROM (
    SELECT i.BillingCountry, i.BillingPostalCode, i.Total
    FROM Invoice i
    WHERE i.BillingPostalCode IN ('94117', '75001', '1010')  -- seleccionamos 3 postales de ejemplo
) AS SourceTable
PIVOT (
    SUM(Total) FOR BillingPostalCode IN ([94117], [75001], [1010])
) AS PivotTable;
