package com.vehicle.challan.controller;

import com.vehicle.challan.entity.Vehicle;
import com.vehicle.challan.services.VehicleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@RestController
@RequestMapping("/vehicle")
public class VehicleController {
	@Autowired
	private VehicleService vehicleService;

	@PostMapping("/saveVehicle")
	public ResponseEntity<Vehicle> saveVehicle(@RequestBody Vehicle vehicle) {
		return ResponseEntity.ok(vehicleService.save(vehicle));
	}
	
	

	@GetMapping("/hello")
	public String hello() {
		return "Hello";
	}

	@GetMapping("/vehicleId")
	public ResponseEntity<Vehicle> getVehicleById(@PathVariable Long vehicleId) {
		return ResponseEntity.ok(vehicleService.getVehicleById(vehicleId));
	}

	@GetMapping("/allVehicle")
	public ResponseEntity<List<Vehicle>> getAllVehicle() {
		List<Vehicle> vehicle = vehicleService.getAllVehicle();
		return ResponseEntity.ok(vehicle);
	}

	@PostMapping("/updateVehicle")
	public ResponseEntity<Vehicle> updateVehicle(@PathVariable("id") Long vehicleId, @RequestBody Vehicle vehicle) {
		vehicle.setId(vehicleId);
		Vehicle updatedVehicle = vehicleService.updateVehicle(vehicle);
		return new ResponseEntity<>(updatedVehicle, HttpStatus.OK);
	}
	
	@GetMapping("/searchVehicleByNumber")
	public ResponseEntity<Vehicle>searchByNumber(@RequestParam String vNumber){
		Vehicle vehicle = vehicleService.searchByNumber(vNumber);
		return ResponseEntity.ok(vehicle);
	}

}
