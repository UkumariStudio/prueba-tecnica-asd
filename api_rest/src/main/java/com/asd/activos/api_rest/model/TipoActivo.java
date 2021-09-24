package com.asd.activos.api_rest.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "tipo_activo")
public class TipoActivo {
	
	@Id
	@Column(name="codigo_tipo_activo")
	private String codigo_tipo_activo;
	
	@Column(name="nombre")
	private String nombre;
	
	@Column(name="descripcion")
	private String descripcion;
}