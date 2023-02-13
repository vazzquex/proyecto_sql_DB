# proyecto_sql_DB

Esta base de datos se llama "vazquez_bank" y se utiliza para registrar información sobre clientes, cuentas bancarias, transacciones, préstamos y pagos de préstamos.

La tabla "cliente" almacena información personal del cliente, como su nombre, apellido, fecha de nacimiento, estado civil, documento y número de teléfono. Cada cliente es identificado únicamente por su "cliente_id".

La tabla "cuenta" registra información sobre las cuentas bancarias de cada cliente, incluyendo el "cliente_id", el saldo actual de la cuenta, la fecha de apertura de la cuenta y el tipo de cuenta y moneda.

La tabla "transaccion" registra las transacciones realizadas en las cuentas bancarias, incluyendo la fecha de la transacción, el tipo de transacción y el monto. Cada transacción está asociada con una cuenta en particular a través del "cuenta_id".

La tabla "prestamo" registra información sobre los préstamos que los clientes han solicitado, incluyendo la fecha de inicio del préstamo, la fecha de vencimiento, el monto prestado y la tasa de interés. Cada préstamo está asociado con una cuenta en particular a través del "cuenta_id".

La tabla "pago_prestamos" registra los pagos realizados por los clientes en relación a sus préstamos, incluyendo la fecha del pago, el monto pagado y el número de cuota. Cada pago está asociado con una cuenta en particular a través del "cuenta_id".




