-- Insertar cuentas de prueba
INSERT INTO banco.Cuentas (ClienteID, NumeroCuenta, TipoCuenta, Saldo, FechaApertura, Estado)
VALUES
(1, '1001-2025-01', 'Ahorros', 1500.00, GETDATE(), 'Activa'),
(2, '1002-2025-01', 'Corriente', 3000.00, GETDATE(), 'Activa'),
(3, '1003-2025-01', 'Ahorros', 500.00, GETDATE(), 'Activa');
GO
