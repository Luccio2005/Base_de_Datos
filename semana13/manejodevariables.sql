USE Chinook
GO

DECLARE 
    @CustomerId INT,
    @Nombre NVARCHAR(100),
    @TotalCompras DECIMAL(10,2);

-- Asignamos un ID específico
SET @CustomerId = 5;

-- Obtenemos el nombre del cliente
SELECT @Nombre = FirstName + ' ' + LastName 
FROM Customer
WHERE CustomerId = @CustomerId;

-- Calculamos el total de compras
SELECT @TotalCompras = SUM(Total)
FROM Invoice
WHERE CustomerId = @CustomerId;

-- Mostramos resultados
PRINT 'Cliente: ' + @Nombre;
PRINT 'Total gastado: ' + CAST(@TotalCompras AS NVARCHAR(20));
