INSERT INTO modelo.tipo_activo (codigo_tipo_activo, nombre, descripcion) VALUES
('TER_BN_NAT', 'Terrenos y bienes naturales', 'Aquellos terrenos y solares que posea la empresa, ya sean urbanos o no.'),
('CONSTRUCCS', 'Construcciones', 'Hace referencia a todo tipo de inmuebles en general y que son propiedad de la organización, como edificios, naves, pisos o locales.'),
('INSTS_TECN', 'Instalaciones técnicas', 'Este concepto hace alusión a todos aquellos elementos que, en conjunto, constituyen una unidad de uso especializada necesaria para la actividad de la empresa. Se trata de montajes en cadena y otro tipo de construcciones similares.'),
('MAQUINARIA', 'Maquinaria', 'Dentro de este apartado se incluyen todas aquellas máquinas, vehículos industriales y herramientas necesarias para la actividad cotidiana.'),
('MOBILIARIO', 'Mobiliario', 'Todas las estanterías, mesas, sillas, mostradores y demás muebles que posee la empresa .'),
('EQ_PRC_INF', 'Equipos para procesos informáticos', 'Compuesto por ordenadores, impresoras, escáner y demás aparatos electrónicos.'),
('ELEM_TRANS', 'Elementos de transporte', 'Dentro de esta categoría se encuentran todos los medios de transporte que formen parte de los bienes de la compañía, como coches, camiones, motos, barcos, etc., utilizados para el transporte de personas, mercancías, materiales o animales.'),
('OTROS_ELEM', 'Otros', 'Aquellos bienes que no se puedan incluir dentro de ninguna de las categorías anteriores.');

INSERT INTO modelo.persona (numero_identificacion, tipo_identificacion, nombres, apellidos) VALUES
('1234567890', 'CC', 'David', 'Méndez'),
('9876543210', 'CE', 'Alfonso', 'Beltrán'),
('7896541230', 'CC', 'Juliana', 'Quintero'),
('3214569870', 'CC', 'Alejandra', 'Castillo'),
('4569871230', 'CC', 'Felipe', 'Garzon');

INSERT INTO modelo.area (nombre, descripcion) VALUES
('Dirección', 'El área de dirección está relacionada con el proceso de la operación general de la empresa.'),
('Recursos Humanos', 'El área de recursos humanos tiene a su cargo los procesos de búsqueda, selección y reclutamiento del personal que la empresa necesita para ocupar los puestos de trabajo.'),
('Producción', 'En esta área se desarrolla el proceso de producción de los bienes y servicios que vende la empresa.'),
('Finanzas o contabilidad', 'Finanzas se encarga de llevar el registro contable de todas las operaciones que realiza la empresa.'),
('Marketing y ventas', 'En esta área se definen las estrategias de marketing que se aplicarán y el mercado o segmento del mercado al que se dirige.');

INSERT INTO modelo.ciudad (nombre, descripcion) VALUES
('Bogotá', 'Capital del país.'),
('Cali', 'Sucursal del cielo.'),
('Medellín', 'Ciudad de la primavera eterna.'),
('Pasto', 'Bien al sur.'),
('Armenia', 'Tierra cafetera.');

INSERT INTO modelo.area_ciudad (id_area, id_ciudad) VALUES
(1, 1),
(2, 1),
(3, 2),
(3, 3),
(3, 5),
(4, 4),
(5, 1);

INSERT INTO modelo.asignacion (id_persona, id_area) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, NULL),
(5, NULL),
(NULL, 1),
(NULL, 2),
(NULL, 3),
(NULL, 4),
(NULL, 5);

INSERT INTO modelo.activo_fijo (numero_serial, nombre, descripcion, codigo_tipo_activo, peso, alto, ancho, largo, valor_compra, fecha_compra, id_asignacion) VALUES
('AF00000001', 'Laptop', 'Para el trabajo digital.', 'EQ_PRC_INF', 5, 0.5, 15, 10, 10000, '2021-01-01', 1),
('AF00000002', 'Silla', 'Para sentarse', 'MOBILIARIO', 10, 70, 70, 70, 200, '2019-09-10', NULL),
('AF00000003', 'Sede Norte', 'Para trabajar', 'INSTS_TECN', 999.999, 100, 50, 50, 1000000000.25, '1995-01-28', 6);