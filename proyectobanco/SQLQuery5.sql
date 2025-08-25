USE BancoDB;
GO  
CREATE TABLE Transacciones (
    id_transaccion INT PRIMARY KEY IDENTITY(1,1),
    id_cuenta INT NOT NULL,
    tipo NVARCHAR(20) CHECK (tipo IN ('Deposito', 'Retiro', 'Transferencia')),
    monto DECIMAL(12,2) NOT NULL,
    fecha DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (id_cuenta) REFERENCES Cuentas(id_cuenta)
);
