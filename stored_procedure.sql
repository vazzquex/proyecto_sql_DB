DELIMITER //
CREATE PROCEDURE informe_cliente()
BEGIN
  SELECT cliente.cliente_id, cliente.nombre, cliente.apellido, SUM(cuenta.saldo_actual) AS saldo_total,
         COUNT(prestamo.prestamo_id) AS num_prestamos
  FROM cliente 
  LEFT JOIN cuenta ON cliente.cliente_id = cuenta.cliente_id
  LEFT JOIN prestamo ON cliente.cliente_id = prestamo.cliente_id
  GROUP BY cliente.cliente_id;
END

DELIMITER ;

DELIMITER //
CREATE PROCEDURE obtener_empleados_salario_mayor(salario_min FLOAT)
BEGIN
  SELECT * FROM empleados WHERE salario > salario_min;
END //
DELIMITER ;



