-- Script para rellenado

-- Obligatorios:

INSERT INTO cliente
(
 nombre
)
VALUES -- Nombre del cliente*
(
    "Juanito"
);

INSERT INTO pago
(
 precio, id_metodo_pago, anticipio, cuenta_por_cobrar, restante, fecha_de_liquidacion, estatus_de_pago, impuestos, monto_disponible, monto_sin_iva
)
VALUES -- Precio del servicio, id del metodo de pago, pago anticipado, lo restante después del anticipo (cuenta por cobrar), id de la columna de restante (pagos después de cuenta por cobrar), fecha de liquidación, id de estatus de pago, impuestos a pagar, monto disponible, monto sin iva
(
    3500, 1, 3500, 0, null, "02/10/2020", 1, null, 3500, 3017
);

INSERT INTO comisiones( -- COMPLETAR COMPLETAR COMPLETAR COMPLETAR COMPLETAR COMPLETAR
 comision, comisionario_id
)
VALUES(
    1000, 1
);








-- Opcionales:

INSERT INTO subcliente
(
 nombre
)
VALUES -- Nombre del sub-cliente, id del cliente
(
    "Pepe",  1
);

INSERT INTO clientes_frecuentes
(
 nombre
)
VALUES -- Nombre del cliente
(
    "Juanito"
);

INSERT INTO subcliente
(
 nombre
)
VALUES -- Nombre del sub-cliente, id del cliente
(
    "Pepe",  1
);

INSERT INTO restante
(
    pago, restante, pago_id
)
VALUES -- Pago, cantidad restante después del pago realizado, el id de la tabla pago de donde está referenciado.
(
 2000, 50, 1
);