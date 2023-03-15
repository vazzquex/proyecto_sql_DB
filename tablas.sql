CREATE DATABASE vazquez_bank;

USE vazquez_bank;

CREATE TABLE cliente(
	cliente_id int NOT NULL,
    nombre varchar(50),
    apellido varchar(50),
    direccion varchar(50),
    fecha_nacimiento varchar(20),
    estado_civil varchar(50),
    documento varchar(8),
    telefono varchar(10),
    
    CONSTRAINT PK_CLASS PRIMARY KEY (cliente_id)
);

CREATE TABLE cuenta(
	cuenta_id int NOT NULL,
    cliente_id int NOT NULL,
    saldo_actual varchar(50),
    fehca_apertura varchar(20),
    tipo_cuenta varchar(20),
    tipo_moneda varchar(50),
    
    CONSTRAINT PK_CLASS PRIMARY KEY (cuenta_id),
    FOREIGN KEY (cliente_id) REFERENCES cliente (cliente_id)
);

CREATE TABLE transaccion(
	transaccion_id int NOT NULL,
    cuenta_id int NOT NULL,
    fecha_transaccion varchar(20),
    tipo_transaccion varchar(20),
    monto varchar(20),
    
    CONSTRAINT PK_CLASS PRIMARY KEY (transaccion_id),
    FOREIGN KEY (cuenta_id) REFERENCES cuenta (cuenta_id)
);


CREATE TABLE prestamo(
	préstamo_id int NOT NULL,
    cliente_id int NOT NULL,
    cuenta_id int NOT NULL,
    fecha_inicio varchar(20),
    fecha_vencimiento varchar(20),
    monto_prestado varchar(20),
    interes varchar(3),
    cuotas varchar(3), 
    
    CONSTRAINT PK_CLASS PRIMARY KEY (préstamo_id),
    FOREIGN KEY (cuenta_id) REFERENCES cuenta (cuenta_id)
); 

CREATE TABLE pago_prestamos(
	pago_préstamo_id int NOT NULL,
    préstamo_id int NOT NULL,
    cuenta_id int NOT NULL,
    fecha_pago varchar(20),
    monto_pagado varchar(20),
    numero_cuota varchar(20),
    saldo_pendiente varchar(20),
    
    CONSTRAINT PK_CLASS PRIMARY KEY (pago_préstamo_id),
    FOREIGN KEY (cuenta_id) REFERENCES cuenta (cuenta_id)
);



