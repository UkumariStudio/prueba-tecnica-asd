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
@Table(name = "persona")
public class Persona {
    
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_persona")
    private Integer idPersona;

    @Column(name="numero_identificacion")
    private String numeroIdentificacion;

    @Column(name="tipo_identificacion")
    private String tipoIdentificacion;

    @Column(name="nombres")
    private String nombres;

    @Column(name="apellidos")
    private String apellidos;
}
