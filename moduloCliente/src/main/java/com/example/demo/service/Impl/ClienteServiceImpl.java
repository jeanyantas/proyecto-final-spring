package com.example.demo.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Cliente;
import com.example.demo.dao.IClienteDao;
import com.example.demo.service.IClienteService;

@Service
public class ClienteServiceImpl {
	@Autowired
	public IClienteDao clientedao;
	//@Override
	public List<Cliente> findAll(){
		return (List<Cliente>) clientedao.findAll();
	}
}
