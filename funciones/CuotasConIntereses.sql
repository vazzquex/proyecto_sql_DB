CREATE DEFINER=`root`@`localhost` FUNCTION `cuotas_con_interes`(ID_Prestamo INT) RETURNS float
    DETERMINISTIC
BEGIN
    DECLARE cuotas_con_interes FLOAT;
    SELECT SUM(monto_prestado * (interes / 100 + 1) / cuotas) INTO cuotas_con_interes FROM prestamo WHERE ID_Prestamo = prestamo_id;
    RETURN cuotas_con_interes;
END