CREATE DEFINER=`root`@`localhost` FUNCTION `nombre_cliente_id`(Usuario_ID INT) 
	RETURNS varchar(100) 
    CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE nombre_completo VARCHAR(100);
	SELECT CONCAT(nombre, ' ', apellido) INTO nombre_completo FROM cliente WHERE Usuario_ID = cliente_id;
	RETURN nombre_completo;
END