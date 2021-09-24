CREATE TABLE IF NOT EXISTS modelo.area (
    id_area SERIAL NOT NULL,
    nombre VARCHAR(100) NOT NULL,
	descripcion VARCHAR(500) NULL,

    CONSTRAINT pk_area_id PRIMARY KEY (id_area)
);

CREATE TABLE IF NOT EXISTS modelo.ciudad (
    id_ciudad SERIAL NOT NULL,
    nombre VARCHAR(100) NOT NULL,
	descripcion VARCHAR(500) NULL,

    CONSTRAINT pk_ciudad_id PRIMARY KEY (id_ciudad)
);

CREATE TABLE IF NOT EXISTS modelo.area_ciudad (
    id_area_ciudad SERIAL NOT NULL,
    id_area INTEGER NOT NULL,
    id_ciudad INTEGER NOT NULL,

    CONSTRAINT pk_area_ciudad_id PRIMARY KEY (id_area_ciudad),
    CONSTRAINT fk_area_ciudad_id_area FOREIGN KEY (id_area) REFERENCES area (id_area),
    CONSTRAINT fk_area_ciudad_id_ciudad FOREIGN KEY (id_ciudad) REFERENCES ciudad (id_ciudad)
);

CREATE TABLE IF NOT EXISTS modelo.persona (
    id_persona SERIAL NOT NULL,
    numero_identificacion VARCHAR(10) NOT NULL,
    tipo_identificacion VARCHAR(5) NOT NULL,
   	nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,

    CONSTRAINT uk_persona_identificacion UNIQUE (numero_identificacion, tipo_identificacion),
    CONSTRAINT pk_persona_id PRIMARY KEY (id_persona)
);

CREATE TABLE IF NOT EXISTS modelo.asignacion (
    id_asignacion SERIAL NOT NULL,
    id_persona INTEGER NULL,
    id_area INTEGER NULL,

    CONSTRAINT pk_asignacion_id PRIMARY KEY (id_asignacion),
    CONSTRAINT fk_asignacion_id_persona FOREIGN KEY (id_persona) REFERENCES persona (id_persona),
    CONSTRAINT fk_asignacion_id_area FOREIGN KEY (id_area) REFERENCES area (id_area)
);

CREATE TABLE IF NOT EXISTS modelo.tipo_activo (
    codigo_tipo_activo VARCHAR(10) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
	descripcion VARCHAR(500) NULL,

    CONSTRAINT pk_tipo_activo_codigo_tipo_activo PRIMARY KEY (codigo_tipo_activo)
);

CREATE TABLE IF NOT EXISTS modelo.activo_fijo (
	numero_serial VARCHAR(10) NOT NULL,
	numero_inventario SERIAL NOT NULL,
	nombre VARCHAR(100) NOT NULL,
	descripcion VARCHAR(500) NULL,
	codigo_tipo_activo VARCHAR(10) NOT NULL,
	peso NUMERIC(6,3) NOT NULL,
	alto NUMERIC(6,3) NOT NULL,
	ancho NUMERIC(6,3) NOT NULL,
	largo NUMERIC(6,3) NOT NULL,
	valor_compra NUMERIC(12,2) NOT NULL,
	fecha_compra DATE NOT NULL,
	id_asignacion INTEGER NULL,

    CONSTRAINT uk_activo_fijo_numero_inventario UNIQUE (numero_inventario),
	CONSTRAINT pk_activo_fijo_serial PRIMARY KEY (numero_serial),
    CONSTRAINT fk_activo_fijo_codigo_tipo_activo FOREIGN KEY (codigo_tipo_activo) REFERENCES tipo_activo (codigo_tipo_activo),
    CONSTRAINT fk_activo_fijo_id_asignacion FOREIGN KEY (id_asignacion) REFERENCES asignacion (id_asignacion)
);