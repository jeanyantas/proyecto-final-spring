package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.service.Impl.ProductoServiceImpl;
import com.example.demo.entity.Producto;

@RestController
@RequestMapping("/apiProducto")
public class ProductoController {
	@Autowired
	private ProductoServiceImpl productoService;
	@GetMapping("/listar")
	public List<Producto> getProductos(){
		return productoService.findAll();
	}
}