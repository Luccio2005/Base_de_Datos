USE BancoDB;
GO 

CREATE TABLE Prestamos (
    id_prestamo INT PRIMARY KEY IDENTITY(2000,1),
    id_cliente INT NOT NULL,
    monto DECIMAL(12,2) NOT NULL,
    tasa_interes DECIMAL(5,2) NOT NULL,
    plazo_meses INT NOT NULL,
    fecha_inicio DATE DEFAULT GETDATE(),
    estado NVARCHAR(20) DEFAULT 'Activo',
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
