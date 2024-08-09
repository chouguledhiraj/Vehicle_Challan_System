package com.vehicle.challan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.vehicle.challan.entity.Challan;
import com.vehicle.challan.entity.Vehicle;
import com.vehicle.challan.services.ChallanService;
import com.vehicle.challan.services.VehicleService;

@RestController
@RequestMapping("/challan")
public class ChallanController {
	
	@Autowired
	private ChallanService challanService;
	
	@Autowired
	private VehicleService vehicleService;

	@PostMapping("/saveChallan")
	public ResponseEntity<Challan> saveChallan(@RequestBody Challan challan) {
		Vehicle vehicle = vehicleService.searchByNumber(challan.getVehicle().getvNumber());
		challan.setVehicle(vehicle);
		return ResponseEntity.ok(challanService.save(challan));
	}

	@GetMapping("/getAllChallanByVehicleId")
	public ResponseEntity<List<Challan>> getAllChallanByVehicleId(@RequestParam String vNumber ) {
		return ResponseEntity.ok(challanService.getAllChallanByVehicleId(vNumber));
	}
	
	@PostMapping("/updateChallan")
	public ResponseEntity<Challan>updateChallan(@PathVariable("id") Long challanId,@RequestBody Challan challan){
		return ResponseEntity.ok(challanService.updateChallan(challan));
	}
	
	@GetMapping("/generatePdf")
	public void getPdf(@PathVariable("id") String challanId){
		challanService.generatePdf(challanId);
	}
	
	@DeleteMapping("/deleteChallan")
	public ResponseEntity<Boolean>deleteChallan(@RequestParam String challanId){
		challanService.delete(Long.valueOf(challanId));
		return ResponseEntity.ok(true);
	}

}