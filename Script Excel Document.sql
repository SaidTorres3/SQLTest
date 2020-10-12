CREATE TABLE cliente( -- FUNCIONA
	id int not null AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(150)
);

CREATE TABLE subcliente( -- FUNCIONA
	id int not null AUTO_INCREMENT PRIMARY KEY,
	id_cliente int not null,
	nombre varchar(150),

    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

CREATE TABLE tipo( -- FUNCIONA
	id int not null AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(150)
);

CREATE TABLE actoytipo( -- FUNCIONA
	id int not null AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(150),
	id_tipo int not null,

	FOREIGN KEY (id_tipo) REFERENCES tipo(id)
);

CREATE TABLE comisionarios(  -- FUNCIONA
	id int not null AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(150) not null,
	porcentaje int not null
);

CREATE TABLE metodos_de_pago( -- FUNCIONA
	id int not null AUTO_INCREMENT PRIMARY KEY,
	metodo varchar(50) not null
);

CREATE TABLE estatus_de_pago( -- FUNCIONA
	id int not null AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(25) not null
);

CREATE TABLE pago( -- FUNCIONA
	id int not null AUTO_INCREMENT PRIMARY KEY,
	precio int,
	id_metodo_pago int,
	anticipo int,
	cuenta_por_cobrar int,
	fecha_de_liquidacion date,
	id_estatus_de_pago int,
	impuestos int,
	monto_disponible int,
	monto_sin_iva int,

    FOREIGN KEY (id_metodo_pago) REFERENCES metodos_de_pago(id),
	FOREIGN KEY (id_estatus_de_pago) REFERENCES estatus_de_pago(id)
);

CREATE TABLE restante( -- FUNCIONA
    id int not null AUTO_INCREMENT PRIMARY KEY,
    pago int not null,
    restante int not null,
	id_pago int not NULL,

	FOREIGN KEY (id_pago) REFERENCES pago(id)
);

CREATE TABLE comisiones( -- FUNCIONA
	id int not null AUTO_INCREMENT PRIMARY KEY,
	comision int not null,
	comisionario_id int not null,
	id_pago int not null,
    
    FOREIGN KEY (comisionario_id) REFERENCES comisionarios(id),
	FOREIGN KEY (id_pago) REFERENCES pago(id)
);

CREATE TABLE folio( -- FUNCIONA
	id int not null AUTO_INCREMENT PRIMARY KEY,
	folio char(11) not null,
	fecha_tramite date not null,
	escritura int,
	id_subcliente int not null,
	cantidad int not null,
	id_actoytipo int not null,
	comentario varchar(150),
	id_pago int not null,
	trabajo_dia_o_orden boolean not null,

    FOREIGN KEY (id_subcliente) REFERENCES subcliente(id),
    FOREIGN KEY (id_actoytipo) REFERENCES actoytipo(id),
    FOREIGN KEY (id_pago) REFERENCES pago(id)
);