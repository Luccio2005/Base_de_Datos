USE banco;
GO

-- ===============================
-- TABLA CLIENTES
-- ===============================
CREATE TABLE banco.Clientes (
    ClienteID INT IDENTITY(1,1) PRIMARY KEY, -- Clave primaria autoincremental
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    DNI CHAR(8) NOT NULL UNIQUE, -- Documento único (Perú: 8 dígitos)
    FechaNacimiento DATE NOT NULL,
    Direccion VARCHAR(200),
    Telefono VARCHAR(15),
    Email VARCHAR(100) UNIQUE
);
GO

-- ===============================
-- TABLA EMPLEADOS
-- ===============================
CREATE TABLE banco.Empleados (
    EmpleadoID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    DNI CHAR(8) NOT NULL UNIQUE,
    FechaNacimiento DATE NOT NULL,
    Cargo VARCHAR(50) NOT NULL, -- Ejemplo: Cajero, Asesor, Gerente
    Salario MONEY NOT NULL,
    FechaContratacion DATE NOT NULL
);
GO
