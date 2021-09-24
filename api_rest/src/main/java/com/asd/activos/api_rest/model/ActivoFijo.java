package com.asd.activos.api_rest.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "activo_fijo")
public class ActivoFijo {
	
    @Id
    @Column(name="numero_serial")
    private String numeroSerial;

    @Column(name="numero_inventario")
    private Integer numeroInventario;

    @Column(name="nombre")
    private String nombre;

    @Column(name="descripcion")
    private String descripcion;

    @Column(name="codigo_tipo_activo")
    private String codigoTipoActivo;

    @Column(name="peso")
    private Double peso;

    @Column(name="alto")
    private Double alto;

    @Column(name="ancho")
    private Double ancho;

    @Column(name="largo")
    private Double largo;

    @Column(name="valor_compra")
    private Double valorCompra;

    @Column(name="fecha_compra")
    private Date fechaCompra;

    @Column(name="id_asignacion")
    private String idAsignacion;
}
