USE Chinook
GO

DECLARE @InvoiceId INT = 10;
DECLARE @Total DECIMAL(10,2);

SELECT @Total = Total
FROM Invoice
WHERE InvoiceId = @InvoiceId;

IF @Total > 15
    PRINT 'Factura con monto alto.';
ELSE
    PRINT 'Factura con monto bajo o promedio.';
