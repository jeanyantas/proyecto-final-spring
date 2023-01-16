package com.example.demo.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Producto;
import com.example.demo.dao.IProductoDao;
import com.example.demo.service.IProductoService;

@Service
public class ProductoServiceImpl {
	@Autowired
	public IProductoDao productodao;
	//@Override
	public List<Producto> findAll(){
		return (List<Producto>) productodao.findAll();
	}
}