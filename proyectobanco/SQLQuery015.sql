-- Esto deber�a fallar (saldo negativo no permitido)
INSERT INTO Cuentas (id_cuenta, saldo, id_cliente)
VALUES ('1234567890', -100, 1);

-- Esto deber�a fallar (tipo inv�lido)
INSERT INTO Transacciones (id_cuenta, monto, tipo)
VALUES (1, 200, 'TRANSFERENCIA');

-- Esto deber�a funcionar
INSERT INTO Transacciones (id_cuenta, monto, tipo)
VALUES (1, 200, 'DEPOSITO');
