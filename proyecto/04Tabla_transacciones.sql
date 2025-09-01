USE Banco;
GO

CREATE TABLE banco.Transacciones (
    TransaccionID INT PRIMARY KEY IDENTITY(1,1),
    CuentaID INT NOT NULL,
    TipoTransaccion VARCHAR(20) NOT NULL,  -- 'Deposito', 'Retiro', 'Transferencia'
    Monto MONEY NOT NULL,
    FechaTransaccion DATETIME NOT NULL DEFAULT GETDATE(),
    Descripcion VARCHAR(255) NULL,
    CONSTRAINT FK_Transacciones_Cuentas FOREIGN KEY (CuentaID) REFERENCES banco.Cuentas(CuentaID)
);
GO
