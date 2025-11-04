USE Chinook
GO

CREATE FUNCTION dbo.ObtenerFacturasPorCliente (@CustomerId INT)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        InvoiceId,
        InvoiceDate,
        Total
    FROM Invoice
    WHERE CustomerId = @CustomerId
);
GO

-- Uso de la función:
SELECT * 
FROM dbo.ObtenerFacturasPorCliente(5);
