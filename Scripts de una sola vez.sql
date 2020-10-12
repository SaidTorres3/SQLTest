-- Scripts de una sola vez

INSERT INTO metodos_de_pago -- FUNCIONA
(
 metodo
)
VALUES
(
 "EFECTIVO"
),
(
 "TARJETA"
),
(
 "TRANSFERENCIA"
);

INSERT INTO estatus_de_pago -- FUNCIONA
(
 nombre
)
VALUES
(
 "PAGADO"
),
(
 "NO PAGADO"
),
(
 "ANTICIPO"
);

INSERT INTO tipo -- FUNCIONA
(
 nombre
)
VALUES -- Nombre del tipo de servicio
(
    "04 - ARRENDAMIENTO"
),
(
    "07 - CARTA DE PERMISO Y PODER"
),
(
    "09 - COMPRAVENTA Y/O PERMUTA DE INMUEBLE"
),
(
    "10 - CONVENIO"
),
(
    "12 - COPIA CERTIFICADA"
);

INSERT INTO actoytipo -- FUNCIONA
(
 nombre, id_tipo
)
VALUES -- Nombre del acto
(
    "45 - COPIA CERTIFICADA", 1
),
(
    "53 - DECLARACION TESTIMONIAL", 2
),
(
    "85 - PODER PLEITOS Y COBRANZAS", 1
),
(
    "98 - PROTOCOLIZACION", 3
),
(
    "99 - ACTA DE ASAMBLEA (SEGUN LO COMPLEJA)", 1
),
(
    "101 - DOCUMENTOS NACIONALES", 5
),
(
    "117 - TESTAMENTO HEREDOR UNIVERSAL", 5
),
(
    "128 - INNOMINADO", 5
),
(
    "129 - OTRO", 4
),
(
    "45 - COPIA CERTIFICADA", 3
);

INSERT into comisionarios -- FUNCIONA
(
    nombre, porcentaje
)
VALUES(
    "Francisco", 50
);
