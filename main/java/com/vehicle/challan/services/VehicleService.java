package com.vehicle.challan.services;

import java.util.List;
import com.vehicle.challan.entity.Vehicle;
import org.springframework.stereotype.Service;

	
@Service

public interface VehicleService {
	
    public Vehicle save(Vehicle vehicle);

    public Vehicle getVehicleById(Long vehicleId);

    public List<Vehicle> getAllVehicle();
    
    public Vehicle updateVehicle(Vehicle vehicle);

	public Vehicle searchByNumber(String vNumber);

	

}
 