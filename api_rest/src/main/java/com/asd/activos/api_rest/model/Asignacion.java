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
@Table(name = "asignacion")
public class Asignacion {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_asignacion")
    private Integer idAsignacion;

    @Column(name="id_persona")
    private Integer idPersona;

    @Column(name="id_area")
    private Integer idArea;
}
