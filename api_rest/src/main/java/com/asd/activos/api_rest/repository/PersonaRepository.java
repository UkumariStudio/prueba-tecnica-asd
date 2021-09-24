package com.asd.activos.api_rest.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.asd.activos.api_rest.model.Persona;

public interface PersonaRepository extends JpaRepository<Persona, Integer> {

}
