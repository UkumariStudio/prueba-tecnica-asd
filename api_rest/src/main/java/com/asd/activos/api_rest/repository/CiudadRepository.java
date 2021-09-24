package com.asd.activos.api_rest.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.asd.activos.api_rest.model.Ciudad;

public interface CiudadRepository extends JpaRepository<Ciudad, Integer> {

}
