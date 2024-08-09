package com.vehicle.challan;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
@EnableAutoConfiguration
@ComponentScan(basePackages = {"com.vehicle.challan.services", "com.vehicle.challan.servicesImpl", "com.vehicle.challan.controller"})
@EntityScan("com.vehicle.challan.entity")
@EnableJpaRepositories(basePackages = { "com.vehicle.challan.repository", "com.vehicle.challan.repositoryImpl" } )
public class ChallanApplication {

	public static void main(String[] args) {
		SpringApplication.run(ChallanApplication.class, args);
	}
	
}
