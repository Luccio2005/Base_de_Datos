USE Chinook
GO

SELECT 
    LastName + '    ' AS Original,
    RTRIM(LastName + '    ') AS SinEspaciosDerecha
FROM Customer;
