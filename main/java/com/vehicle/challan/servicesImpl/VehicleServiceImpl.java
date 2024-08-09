package com.vehicle.challan.servicesImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.vehicle.challan.entity.Vehicle;
import com.vehicle.challan.repository.VehicleRepository;
import com.vehicle.challan.services.VehicleService;

@Component
public class VehicleServiceImpl implements VehicleService {

	@Autowired
	private VehicleRepository vehicleRepository;

	@Override
	public Vehicle save(Vehicle vehicle) {
		return vehicleRepository.save(vehicle);
	}

	@Override
	public Vehicle getVehicleById(Long vehicleId) {
		return vehicleRepository.findById(vehicleId).get();

	}

	public List<Vehicle> getAllVehicle() {
		return vehicleRepository.findAll();
	}

	@Override
	public Vehicle updateVehicle(Vehicle vehicle) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Vehicle searchByNumber(String vNumber) {
		return vehicleRepository.findByvNumber(vNumber);
	}

}
