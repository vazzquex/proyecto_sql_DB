
-- Vista para mostrar los saldos actuales de todas las cuentas y sus titulares:
CREATE VIEW saldos_cuentas AS
SELECT cuenta.cuenta_id, cliente.nombre, cliente.apellido, cuenta.saldo_actual
FROM cuenta
JOIN cliente ON cuenta.cliente_id = cliente.cliente_id;

-- Vista para mostrar los préstamos vigentes y sus titulares:
CREATE VIEW prestamos_vigentes AS
SELECT cliente.nombre, cliente.apellido, prestamo.monto_prestado, prestamo.fecha_inicio, prestamo.fecha_vencimiento, prestamo.interes
FROM prestamo
JOIN cuenta ON prestamo.cuenta_id = cuenta.cuenta_id
JOIN cliente ON prestamo.cliente_id = cliente.cliente_id
WHERE prestamo.fecha_vencimiento > CURRENT_DATE;

-- Vista para mostrar el total de transacciones realizadas por cada tipo de transacción:
CREATE VIEW transacciones_por_tipo AS
SELECT transaccion.tipo_transaccion, COUNT(*) AS cantidad_transacciones, SUM(transaccion.monto) AS monto_total
FROM transaccion
GROUP BY transaccion.tipo_transaccion;

-- Vista para mostrar el número total de cuentas por tipo de moneda:
CREATE VIEW cuentas_por_moneda AS
SELECT tipo_moneda, COUNT(*) AS cantidad_cuentas
FROM cuenta
GROUP BY tipo_moneda;

-- Vista para mostrar el saldo promedio de todas las cuentas por tipo de cuenta:
CREATE VIEW saldo_promedio_cuentas AS
SELECT tipo_cuenta, AVG(saldo_actual) AS saldo_promedio
FROM cuenta
GROUP BY tipo_cuenta;



