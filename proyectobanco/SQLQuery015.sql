-- Esto debería fallar (saldo negativo no permitido)
INSERT INTO Cuentas (id_cuenta, saldo, id_cliente)
VALUES ('1234567890', -100, 1);

-- Esto debería fallar (tipo inválido)
INSERT INTO Transacciones (id_cuenta, monto, tipo)
VALUES (1, 200, 'TRANSFERENCIA');

-- Esto debería funcionar
INSERT INTO Transacciones (id_cuenta, monto, tipo)
VALUES (1, 200, 'DEPOSITO');
