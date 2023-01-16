package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableFeignClients
@EnableDiscoveryClient
@SpringBootApplication
public class ModuloProveedorApplication {

	public static void main(String[] args) {
		SpringApplication.run(ModuloProveedorApplication.class, args);
		System.out.println("Iniciando Modulo Proveedor");
	}

}
