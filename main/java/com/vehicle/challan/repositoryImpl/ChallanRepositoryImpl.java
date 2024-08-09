package com.vehicle.challan.repositoryImpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vehicle.challan.entity.Challan;
import com.vehicle.challan.repository.ChallanRepository;
import com.vehicle.challan.repository.ChallanRepositoryJPA;
import com.vehicle.challan.repository.VehicleRepository;

@Repository
@Transactional
public class ChallanRepositoryImpl implements ChallanRepository{

	@Autowired
	private ChallanRepositoryJPA challanRepositoryJPA;
	
	@Autowired
    private VehicleRepository vehicleRepository;
	
	@Override
	public Challan updateChallan(Challan challan) {
		Challan dbChallan = challanRepositoryJPA.findById(challan.getId()).get();
		dbChallan.setChallanDate(challan.getChallanDate());
		dbChallan.setFineType(challan.getFineType());
		dbChallan.setFine(challan.getFine());
		dbChallan.setVehicle(vehicleRepository.findById(challan.getVehicle().getId()).get());
		return challanRepositoryJPA.save(dbChallan);
	}

}
