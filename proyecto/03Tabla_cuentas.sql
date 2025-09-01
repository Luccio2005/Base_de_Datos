CREATE TABLE banco.Cuentas (
    CuentaID INT IDENTITY(1,1) PRIMARY KEY,
    ClienteID INT NOT NULL,
    NumeroCuenta VARCHAR(20) NOT NULL UNIQUE,
    TipoCuenta VARCHAR(20) NOT NULL,
    Saldo MONEY NOT NULL DEFAULT 0,
    FechaApertura DATE NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_Cuentas_Clientes 
        FOREIGN KEY (ClienteID) REFERENCES banco.Clientes(ClienteID)
);
