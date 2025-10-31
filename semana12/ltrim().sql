USE Chinook
GO

SELECT 
    '    ' + FirstName AS Original,
    LTRIM('    ' + FirstName) AS SinEspaciosIzquierda
FROM Customer;
