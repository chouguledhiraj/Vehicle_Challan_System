package com.vehicle.challan.services;

import org.apache.catalina.User;
import org.springframework.stereotype.Service;

import com.vehicle.challan.entity.Challan;
import com.vehicle.challan.entity.VehicleUser;
@Service
public interface VehicleUserService {
	
	public VehicleUser save(VehicleUser user);

	public boolean login(String userLoginId, String password);
	
	 

}
