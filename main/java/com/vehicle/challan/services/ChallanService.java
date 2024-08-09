package com.vehicle.challan.services;

import java.util.List;

import org.springframework.stereotype.Service;
import com.vehicle.challan.entity.Challan;
import com.vehicle.challan.entity.Vehicle;

@Service
public interface ChallanService {
	
    public Challan save(Challan challan);

    public List<Challan> getAllChallanByVehicleId(String vehicleId);
    
    public Challan updateChallan(Challan challan);

	public void delete(Long challanId);
	
	//public void generatePdf(Long id);

	public void generatePdf(String challanId);


    

}
