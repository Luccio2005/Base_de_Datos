USE Chinook
GO

CREATE PROCEDURE CalcularTotalPorCliente
    @CustomerId INT,
    @TotalCompras DECIMAL(10,2) OUTPUT
AS
BEGIN
    SELECT @TotalCompras = SUM(Total)
    FROM Invoice
    WHERE CustomerId = @CustomerId;
END;
GO

-- ?? Ejecución:
DECLARE @resultado DECIMAL(10,2);
EXEC CalcularTotalPorCliente @CustomerId = 5, @TotalCompras = @resultado OUTPUT;
SELECT @resultado AS TotalDelCliente;
