INSERT INTO Sucursales (nombre, direccion, ciudad)
VALUES 
('Sucursal Central', 'Av. Principal 123', 'Arequipa'),
('Sucursal Norte', 'Calle Los Olivos 456', 'Lima'),
('Sucursal Sur', 'Av. Mariscal 789', 'Cusco');

INSERT INTO Empleados (nombre, apellido, cargo, salario, id_sucursal)
VALUES
('Carlos', 'Pérez', 'Cajero', 2500.00, 1),
('María', 'Lopez', 'Asesor de Créditos', 3200.00, 1),
('Jorge', 'Ramírez', 'Gerente', 6000.00, 2),
('Ana', 'Torres', 'Cajera', 2600.00, 3);