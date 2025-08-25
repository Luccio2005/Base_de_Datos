USE BancoDB;
GO 
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY IDENTITY(1,1),
    nombre NVARCHAR(100) NOT NULL,
    dni CHAR(8) UNIQUE NOT NULL,
    direccion NVARCHAR(150),
    telefono CHAR(9),
    fecha_registro DATE DEFAULT GETDATE()
);
