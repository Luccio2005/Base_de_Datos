USE BancoDB;
GO 
CREATE TABLE Cuentas (
    id_cuenta INT PRIMARY KEY IDENTITY(1000,1),
    id_cliente INT NOT NULL,
    tipo_cuenta NVARCHAR(20) CHECK (tipo_cuenta IN ('Ahorros', 'Corriente')),
    saldo DECIMAL(12,2) DEFAULT 0,
    fecha_apertura DATE DEFAULT GETDATE(),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
