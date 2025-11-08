USE Chinook
GO

DECLARE @CustomerId INT;
DECLARE @FirstName NVARCHAR(40);
DECLARE @LastName NVARCHAR(40);
DECLARE @Country NVARCHAR(40);

-- Declarar el cursor
DECLARE cursor_clientes CURSOR FOR
SELECT CustomerId, FirstName, LastName, Country
FROM Customer;

-- Abrir cursor
OPEN cursor_clientes;

-- Leer primera fila
FETCH NEXT FROM cursor_clientes INTO @CustomerId, @FirstName, @LastName, @Country;

-- Recorrer todos los registros
WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Cliente: ' + @FirstName + ' ' + @LastName + ' | País: ' + @Country;

    FETCH NEXT FROM cursor_clientes INTO @CustomerId, @FirstName, @LastName, @Country;
END

-- Cerrar y liberar
CLOSE cursor_clientes;
DEALLOCATE cursor_clientes;
