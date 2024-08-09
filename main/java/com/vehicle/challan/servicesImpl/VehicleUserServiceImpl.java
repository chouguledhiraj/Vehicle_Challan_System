package com.vehicle.challan.servicesImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.vehicle.challan.entity.Challan;
import com.vehicle.challan.entity.VehicleUser;
import com.vehicle.challan.repository.VehicleUserRepository;
import com.vehicle.challan.services.VehicleUserService;
@Component
public class VehicleUserServiceImpl implements VehicleUserService {
	
	@Autowired
	private VehicleUserRepository userRepositery;
	
	
    public VehicleUser save(VehicleUser user){
        return userRepositery.save(user);
    }


	@Override
	public boolean login(String userLoginId, String password) {
		VehicleUser user = userRepositery.findByUserLoginId(userLoginId);
		if(user != null && userLoginId.equalsIgnoreCase(user.getUserLoginId()) && password.equalsIgnoreCase(user.getUserLoginPassword()))
			return true;
		else
			return false;
	}
	

}
