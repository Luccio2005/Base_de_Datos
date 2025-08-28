USE BancoDB;
GO
CREATE TABLE Sucursales (
    id_sucursal INT PRIMARY KEY IDENTITY(1,1), 
    nombre NVARCHAR(100) NOT NULL,
    direccion NVARCHAR(200) NOT NULL,
    ciudad NVARCHAR(100) NOT NULL
);