CREATE TABLE Empleados (
    id_empleado INT PRIMARY KEY IDENTITY(1,1), 
    nombre NVARCHAR(100) NOT NULL,
    apellido NVARCHAR(100) NOT NULL,
    cargo NVARCHAR(50) NOT NULL, -- Cajero, Gerente, Asesor, etc.
    salario DECIMAL(10,2) NOT NULL CHECK (salario > 0),
    id_sucursal INT NOT NULL,
    FOREIGN KEY (id_sucursal) REFERENCES Sucursales(id_sucursal)
);