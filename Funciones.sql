
DELIMITER //

CREATE FUNCTION `cuotas_con_interes`(ID_Prestamo INT) RETURNS float
    DETERMINISTIC
BEGIN
    DECLARE cuotas_con_interes FLOAT;
    SELECT SUM(monto_prestado * (interes / 100 + 1) / cuotas) INTO cuotas_con_interes FROM prestamo p WHERE p.ID_Prestamo = ID_Prestamo;
    RETURN cuotas_con_interes;
END//


DELIMITER //

CREATE FUNCTION `nombre_cliente_id`(Usuario_ID INT) 
	RETURNS varchar(100) 
    DETERMINISTIC
BEGIN
	DECLARE nombre_completo VARCHAR(100);
	SELECT CONCAT(nombre, ' ', apellido) INTO nombre_completo FROM cliente WHERE Usuario_ID = cliente_id;
	RETURN nombre_completo;
END//
