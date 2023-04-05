# proyecto_sql_DB


Introducción del proyecto:
El proyecto consiste en una base de datos relacional llamada "Vazquez_Bank" que almacena información de un banco, como clientes, cuentas, préstamos, transacciones, etc.

Objetivo:
El objetivo del proyecto SQL es permitir a los usuarios del banco, incluyendo gerentes y empleados, acceder a la información relevante en tiempo real y facilitar la gestión y el análisis de los datos. Además, el proyecto busca mejorar la eficiencia y precisión de las operaciones bancarias, y garantizar la seguridad y privacidad de los datos.

Situación problemática:
La situación problemática que el proyecto busca solucionar es la complejidad y el volumen de la información que maneja un banco. Sin una base de datos bien estructurada y eficiente. Además, la falta de seguridad y privacidad en el manejo de los datos puede poner en riesgo la información confidencial de los clientes.

Modelo de negocio del proyecto SQL:
El modelo de negocio del proyecto SQL es proporcionar servicios bancarios a los clientes, incluyendo la apertura de cuentas, préstamos, transacciones, y otros servicios financieros.



cliente: Contiene información personal de los clientes del banco.
•	columna: cliente_id (clave primaria), nombre, apellido, fecha_nacimiento, estado_civil, direccion, ciudad, pais, telefono.

cuenta: Contiene información de las cuentas bancarias de los clientes.
•	columna: cuenta_id (clave primaria), cliente_id (clave foránea), tipo_cuenta, fecha_apertura, saldo_actual.

transaccion: Contiene información sobre las transacciones realizadas en las cuentas bancarias.
•	columna: transaccion_id (clave primaria), cuenta_id (clave foránea), tipo_transaccion, fecha_transaccion, monto.

empleado: Contiene información sobre los empleados del banco.
•	columna: empleado_id (clave primaria), nombre, apellido, email, fecha_nacimiento, fecha_contratacion, salario, cargo.

prestamo: Contiene información sobre los préstamos que han sido otorgados a los clientes.
•	columna: prestamo_id (clave primaria), cuenta_id (clave foránea), monto, tasa_interes, fecha_inicio, fecha_fin, saldo_pendiente.
pago_prestamos: Contiene información sobre los pagos realizados en los préstamos.
•	columna: pago_id (clave primaria), prestamo_id (clave foránea), fecha_pago, monto_pagado.




Listado de vistas:
 -Vista para mostrar los saldos actuales de todas las cuentas y sus titulares 
- Vista para mostrar los préstamos vigentes y sus titulares
- Vista para mostrar el total de transacciones realizadas por cada tipo de transacción 
- Vista para mostrar el número total de cuentas por tipo de moneda - Vista para mostrar el saldo promedio de todas las cuentas por tipo de cuenta 

Listado funciones:
-Función para calcular las cuotas más los intereses -Función para obtener el nombre de un cliente con su ID 

Listado stored procedures:
-El primer procedimiento, llamado "informe_cliente", realiza una consulta en la base de datos que devuelve información sobre los clientes - El segundo procedimiento, llamado "obtener_empleados_salario_mayor", recibe un parámetro de salario mínimo y devuelve una lista de todos los empleados que tienen un salario mayor



Esta base de datos se llama "vazquez_bank" y es una DB sobre una cuenta bancaria

La tabla "cliente" almacena información personal del cliente, como su nombre, apellido, fecha de nacimiento, estado civil, documento y número de teléfono. Cada cliente es identificado únicamente por su "cliente_id".

La tabla "cuenta" registra información sobre las cuentas bancarias de cada cliente, incluyendo el "cliente_id", el saldo actual de la cuenta, la fecha de apertura de la cuenta y el tipo de cuenta y moneda.

La tabla "transaccion" registra las transacciones realizadas en las cuentas bancarias, incluyendo la fecha de la transacción, el tipo de transacción y el monto. Cada transacción está asociada con una cuenta en particular a través del "cuenta_id".

La tabla "prestamo" registra información sobre los préstamos que los clientes han solicitado, incluyendo la fecha de inicio del préstamo, la fecha de vencimiento, el monto prestado y la tasa de interés. Cada préstamo está asociado con una cuenta en particular a través del "cuenta_id".

La tabla "pago_prestamos" registra los pagos realizados por los clientes en relación a sus préstamos, incluyendo la fecha del pago, el monto pagado y el número de cuota. Cada pago está asociado con una cuenta en particular a través del "cuenta_id".




