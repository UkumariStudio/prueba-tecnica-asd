package com.asd.activos.api_rest.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/holaMundo")
@CrossOrigin(origins = "*")
public class HolaMundoController {

    @GetMapping("/saludarA/{nombre}")
    public String getHolaMundo(@PathVariable("nombre") String nombre){
        return "Hola, " + nombre;
    }
    
}