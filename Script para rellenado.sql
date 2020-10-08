-- Script para rellenado

-- Obligatorios:

INSERT INTO cliente  --FUNCIONA
(
 nombre
)
VALUES -- Nombre del cliente*
(
    "Juanito"
);

INSERT INTO pago --FUNCIONA
(
 precio, id_metodo_pago, anticipo, cuenta_por_cobrar, fecha_de_liquidacion, estatus_de_pago, impuestos, monto_disponible, monto_sin_iva
)
VALUES -- Precio del servicio, id del metodo de pago, pago anticipado, lo restante después del anticipo (cuenta por cobrar), id de la columna de restante (pagos después de cuenta por cobrar), fecha de liquidación, id de estatus de pago, impuestos a pagar, monto disponible, monto sin iva
(
    3500, 1, 3500, 0, "2020/10/02", 1, null, 3500, 3017
);

INSERT INTO comisiones -- FUNCIONA
( 
 comision, comisionario_id, pago_id
)
VALUES( -- Cantidad de comisión, el id del comisionario y el id de pago
    1000, 1, 1
);

INSERT INTO folio( --FUNCIONA
 folio, fecha_tramite, escritura, cantidad, comentario, trabajo_dia_o_orden, id_cliente, tipo_id, acto_id, pago
)
VALUES
(
 "2020-06-001", "2020-06-02", null, 1, "COPIA CERTIFICADA", 1, 1, 1, 1, 1
);





-- Opcionales:

INSERT INTO subcliente -- FUNCIONA
(
 nombre, id_cliente
)
VALUES -- Nombre del sub-cliente, id del cliente
(
    "Pepe",  1
);

INSERT INTO clientes_frecuentes -- FUNCIONA
(
 id_cliente, codigo
)
VALUES -- Nombre del cliente
(
    1, 1001
);

INSERT INTO restante -- FUNCIONA
(
    pago, restante, id_pago
)
VALUES -- Pago, cantidad restante después del pago realizado, el id de la tabla pago de donde está referenciado.
(
 2000, 50, 1
);

