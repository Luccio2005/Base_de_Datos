USE Chinook
GO 

BEGIN TRY
    BEGIN TRANSACTION;

    -- Intentamos insertar un cliente con un CustomerId que YA EXISTE
    INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Email, SupportRepId)
    VALUES (1, 'ErrorTest', 'CatchExample', 'Test Inc', 'Calle Falsa 123', 'Lima', 'Lima', 'Peru', '15000', '999999999', 'error@test.com', 3);

    -- Si no hay error, se confirma
    COMMIT TRANSACTION;
    PRINT '✅ Transacción completada correctamente.';

END TRY
BEGIN CATCH
    -- Si ocurre error, hacemos rollback
    ROLLBACK TRANSACTION;

    PRINT '❌ Ocurrió un error. La transacción fue revertida.';

    -- Información del error
    SELECT 
        ERROR_NUMBER()   AS NumeroError,
        ERROR_SEVERITY() AS Severidad,
        ERROR_STATE()    AS Estado,
        ERROR_PROCEDURE() AS Procedimiento,
        ERROR_LINE()     AS Linea,
        ERROR_MESSAGE()  AS Mensaje;
END CATCH;
