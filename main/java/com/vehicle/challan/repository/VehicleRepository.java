package com.vehicle.challan.repository;
import com.vehicle.challan.entity.Vehicle;

import org.springframework.data.jpa.repository.JpaRepository;

public interface VehicleRepository extends JpaRepository<Vehicle, Long> {
	
	Vehicle findByvNumber(String vNumber);

}
