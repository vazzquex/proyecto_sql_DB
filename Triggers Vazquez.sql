DELIMITER $$
CREATE TRIGGER enviar_alerta_por_retiro_grande
AFTER INSERT ON transaccion
FOR EACH ROW
IF NEW.tipo_transaccion = 'retiro' AND NEW.monto > 1000 THEN
    CALL enviar_correo_electronico(NEW.cuenta_id, NEW.monto);
END IF;
$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER actualizar_saldo_despues_de_transaccion
AFTER INSERT ON transaccion
FOR EACH ROW
UPDATE cuenta SET saldo_actual = CASE tipo_transaccion
    WHEN 'deposito' THEN saldo_actual + NEW.monto
    WHEN 'retiro' THEN saldo_actual - NEW.monto
    WHEN 'transferencia' THEN saldo_actual - NEW.monto
    END
WHERE cuenta_id = NEW.cuenta_id;
$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER actualizar_saldo_pendiente_despues_de_pago
AFTER INSERT ON pago_prestamos
FOR EACH ROW
UPDATE prestamo SET saldo_pendiente = saldo_pendiente - NEW.monto_pagado
WHERE prestamo_id = NEW.prestamo_id;
$$
DELIMITER ;