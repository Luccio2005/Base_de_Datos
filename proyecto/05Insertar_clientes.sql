USE Banco;
GO

-- Insertar clientes de prueba
INSERT INTO banco.Clientes (Nombre, Apellido, DNI, FechaNacimiento, Direccion, Telefono)
VALUES
('Juan', 'P�rez', '12345678', '1985-03-15', 'Av. Siempre Viva 123', '987654321'),
('Mar�a', 'L�pez', '87654321', '1990-07-22', 'Calle Falsa 456', '912345678'),
('Carlos', 'Ram�rez', '11223344', '1978-11-30', 'Jr. Los Olivos 789', '934567890');
GO