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
@Table(name = "area_ciudad")
public class AreaCiudad {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_area_ciudad")
    private Integer idAreaCiudad;

    @Column(name="id_area")
    private Integer idArea;

    @Column(name="id_ciudad")
    private Integer idCiudad;
}
