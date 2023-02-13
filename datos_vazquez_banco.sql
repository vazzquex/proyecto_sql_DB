INSERT INTO cliente (cliente_id, nombre, apellido, direccion, fecha_nacimiento, estado_civil, documento, telefono)
VALUES
(1, 'Juan', 'Pérez', 'Calle 123', '01/01/1980', 'Soltero', '12345678', '5551234567'),
(2, 'María', 'González', 'Calle 456', '02/02/1985', 'Casada', '23456789', '5552345678'),
(3, 'Pedro', 'Rodríguez', 'Calle 789', '03/03/1990', 'Soltero', '34567890', '555 3456789');


INSERT INTO cuenta (cuenta_id, cliente_id, saldo_actual, fecha_apertura, tipo_cuenta, tipo_moneda)
VALUES 
(1001, 1, '10000', '2022-01-01', 'ahorro', 'dolares'),
(1002, 2, '5000', '2022-02-01', 'corriente', 'pesos'),
(1003, 3, '7000', '2022-03-01', 'ahorro', 'dolares');

INSERT INTO transaccion (transaccion_id, cuenta_id, fecha_transaccion, tipo_transaccion, monto)
VALUES 
(1, 1001, '2022-01-01', 'deposito', '1000'),
(2, 1002, '2022-02-01', 'retiro', '500'),
(3, 1003, '2022-03-01', 'transferencia', '2000');

INSERT INTO prestamo (prestamo_id, cliente_id, cuenta_id, fecha_inicio, fecha_vencimiento, monto_prestado, interes, cuotas)
VALUES 
(1, 2001, 1001, '2022-01-01', '2022-12-31', '10000', '5', '12'),
(2, 2002, 1002, '2022-02-01', '2023-01-31', '20000', '6', '24'),
(3, 2003, 1003, '2022-03-01', '2023-02-28', '30000', '7', '36');

INSERT INTO pago_prestamos (pago_prestamo_id, préstamo_id, cuenta_id, fecha_pago, monto_pagado, numero_cuota, saldo_pendiente)
VALUES 
(1, 1, 1001, '2022-01-15', '1000', '1', '9000'),
(2, 2, 1002, '2022-02-15', '1000', '2', '19000'),
(3, 3, 1003, '2022-03-15', '1000', '3', '29000');