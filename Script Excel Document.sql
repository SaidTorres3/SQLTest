CREATE TABLE folio(
	id int not null AUTO_INCREMENT PRIMARY KEY,
	folio char(11) not null,
	fecha_tramite date not null,
	escritura int,
	codigo_cliente_frecuente int,
	id_cliente int not null,
	id_subcliente int,
	cantidad int not null,
	tipo_id int not null,
	acto_id int not null,
	comentario varchar(150),
	pago int not null,
	comisiones_id int not null,
	trabajo_dia_o_orden boolean not null,

    FOREIGN KEY (codigo_cliente_frecuente) REFERENCES clientes_frecuentes(id),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id),
    FOREIGN KEY (id_subcliente) REFERENCES subcliente(id),
    FOREIGN KEY (tipo_id) REFERENCES tipo(id),
    FOREIGN KEY (acto_id) REFERENCES acto(id),
    FOREIGN KEY (pago) REFERENCES pago(id),
    FOREIGN KEY (comisiones_id) REFERENCES comisiones(id)
);	

CREATE TABLE cliente(
	id int not null AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(150)
);
	
CREATE TABLE subcliente(
	id int not null AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(150),
	id_cliente int,

    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

CREATE TABLE tipo(
	id int not null AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(150)
);

CREATE TABLE acto(
	id int not null AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(150)
);

CREATE TABLE pago(
	id int not null AUTO_INCREMENT PRIMARY KEY,
	precio int,
	id_metodo_pago int not null,
	anticipo int,
	cuenta_por_cobrar int,
    restante int,
	fecha_de_liquidacion date,
	pagado boolean,
	impuestos int,
	monto_disponible int,
	monto_sin_iva int,

    FOREIGN KEY (id_metodo_pago) REFERENCES metodos_de_pago(id),
    FOREIGN KEY (restante) REFERENCES restante(id)
);

CREATE TABLE restante(
    id int not null AUTO_INCREMENT PRIMARY KEY,
    pago int not null,
    restante int not null
);

CREATE TABLE metodos_de_pago(
	id int not null AUTO_INCREMENT PRIMARY KEY,
	metodo varchar(50)
);

CREATE TABLE comisionarios(
	id int not null AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(150) not null,
	porcentaje int not null
);

CREATE TABLE comisiones(
	id int not null AUTO_INCREMENT PRIMARY KEY,
	comision int not null,
	comisionario_id int not null,
    
    FOREIGN KEY (comisionario_id) REFERENCES comisionarios(id)
);

CREATE TABLE clientes_frecuentes(
	id int not null AUTO_INCREMENT PRIMARY KEY,
	id_cliente int not null, 
	codigo int not null,

    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

