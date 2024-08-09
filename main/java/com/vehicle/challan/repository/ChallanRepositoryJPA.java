package com.vehicle.challan.repository;
import com.vehicle.challan.entity.Challan;
import com.vehicle.challan.entity.Vehicle;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ChallanRepositoryJPA extends JpaRepository<Challan, Long> {

	List<Challan> findByVehicle(Vehicle vehicle);

}
