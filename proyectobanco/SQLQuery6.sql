USE BancoDB;
GO 

-- Insertar clientes
INSERT INTO Clientes (nombre, dni, direccion, telefono)
VALUES 
('Luis Pérez', '12345678', 'Av. Principal 123', '987654321'),
('Ana Torres', '87654321', 'Jr. Secundario 456', '912345678');

-- Insertar cuentas
INSERT INTO Cuentas (id_cliente, tipo_cuenta, saldo)
VALUES 
(1, 'Ahorros', 5000),
(1, 'Corriente', 2000),
(2, 'Ahorros', 3000);

-- Insertar préstamos
INSERT INTO Prestamos (id_cliente, monto, tasa_interes, plazo_meses)
VALUES 
(1, 10000, 12.5, 24),
(2, 5000, 10.0, 12);

-- Insertar transacciones
INSERT INTO Transacciones (id_cuenta, tipo, monto)
VALUES 
(1000, 'Deposito', 1500),
(1001, 'Retiro', 500),
(1002, 'Deposito', 2000);
