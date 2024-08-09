package com.vehicle.challan.repository;

import org.springframework.stereotype.Component;

import com.vehicle.challan.entity.Challan;

@Component
public interface ChallanRepository {
	
	Challan updateChallan(Challan challan);

}
