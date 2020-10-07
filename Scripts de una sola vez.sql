-- Scripts de una sola vez

INSERT INTO metodos_de_pago
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

INSERT INTO estatus_de_pago
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

INSERT INTO tipo
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

INSERT INTO acto
(
 nombre
)
VALUES -- Nombre del acto
(
    "45 - COPIA CERTIFICADA"
),
(
    "53 - DECLARACION TESTIMONIAL"
),
(
    "85 - PODER PLEITOS Y COBRANZAS"
),
(
    "98 - PROTOCOLIZACION"
),
(
    "99 - ACTA DE ASAMBLEA (SEGUN LO COMPLEJA)"
),
(
    "101 - DOCUMENTOS NACIONALES"
),
(
    "117 - TESTAMENTO HEREDOR UNIVERSAL"
),
(
    "128 - INNOMINADO"
),
(
    "129 - OTRO"
),
(
    "45 - COPIA CERTIFICADA"
);

INSERT into comisionarios(
    nombre, porcentaje
)
VALUES(
    "Francisco", 50
);