USE BancoDB;
GO
-- CLIENTES
ALTER TABLE Clientes
ADD CONSTRAINT UQ_Clientes_DNI UNIQUE (dni);

ALTER TABLE Clientes
ADD CONSTRAINT UQ_Clientes_Telefono UNIQUE (telefono);

-- CUENTAS
ALTER TABLE Cuentas
ADD CONSTRAINT UQ_Cuentas_Numero UNIQUE (numero_cuenta);

ALTER TABLE Cuentas
ADD CONSTRAINT CK_Cuentas_Saldo CHECK (saldo >= 0);

-- TRANSACCIONES
ALTER TABLE Transacciones
ADD CONSTRAINT CK_Transacciones_Monto CHECK (monto > 0);

ALTER TABLE Transacciones
ADD CONSTRAINT CK_Transacciones_Tipo CHECK (tipo IN ('DEPOSITO','RETIRO'));

-- PRESTAMOS
ALTER TABLE Prestamos
ADD CONSTRAINT CK_Prestamos_Monto CHECK (monto > 0);

ALTER TABLE Prestamos
ADD CONSTRAINT CK_Prestamos_Tasa CHECK (tasa_interes BETWEEN 0 AND 100);

-- EMPLEADOS
ALTER TABLE Empleados
ADD CONSTRAINT CK_Empleados_Salario CHECK (salario > 0);

ALTER TABLE Empleados
ADD CONSTRAINT CK_Empleados_Cargo CHECK (LEN(cargo) > 0);
