-- Script para rellenado

-- Obligatorios:

INSERT INTO cliente  -- FUNCIONA
(
 nombre
)
VALUES -- Nombre del cliente*
(
    "Juanito"
);

INSERT INTO subcliente -- FUNCIONA
(
 id_cliente, nombre
)
VALUES -- Id del cliente, nombre del sub-cliente
(
    1, "El pepe"
);

INSERT INTO pago -- 
(
 precio, id_metodo_pago, anticipo, cuenta_por_cobrar, fecha_de_liquidacion, id_estatus_de_pago, impuestos, monto_disponible, monto_sin_iva
)
VALUES -- Precio del servicio, id del metodo de pago, pago anticipado, lo restante después del anticipo (cuenta por cobrar), id de la columna de restante (pagos después de cuenta por cobrar), fecha de liquidación, id de estatus de pago, impuestos a pagar, monto disponible, monto sin iva
(
    3500, 1, 3500, 0, "2020/10/02", 1, null, 3500, 3017
);

INSERT INTO comisiones -- 
( 
 comision, comisionario_id, id_pago
)
VALUES( -- Cantidad de comisión, el id del comisionario y el id de pago
    1000, 1, 1
);

INSERT INTO folio -- 
(
 folio, fecha_tramite, escritura, cantidad, comentario, trabajo_dia_o_orden, id_subcliente, id_actoytipo, pago
)
VALUES
(
 "2020-06-001", "2020-06-02", null, 1, "COPIA CERTIFICADA", 1, 1, 1, 1
);





-- Opcionales:

INSERT INTO restante -- FUNCIONA
(
    pago, restante, id_pago
)
VALUES -- Pago, cantidad restante después del pago realizado, el id de la tabla pago de donde está referenciado.
(
 2000, 50, 1
);

