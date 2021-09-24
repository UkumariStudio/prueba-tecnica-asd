package com.asd.activos.api_rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.asd.activos.api_rest.model.ActivoFijo;
import com.asd.activos.api_rest.repository.ActivoFijoRepository;

@RestController
@RequestMapping("/api/activos")
@CrossOrigin(origins = "*")
public class ActivosController {
	
	@Autowired
	private ActivoFijoRepository activoFijoRepository;
	
    @GetMapping("/listarAll")
    public List<ActivoFijo>  getAllActivos (){
    	List<ActivoFijo> listActivos = activoFijoRepository.findAll();
        return listActivos;
    }
	
}
