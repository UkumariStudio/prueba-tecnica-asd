package com.asd.activos.api_rest.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "ciudad")
public class Ciudad {
    
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_ciudad")
    private Integer idCiudad;
    
	@Column(name="nombre")
	private String nombre;
	
	@Column(name="descripcion")
	private String descripcion;
}
