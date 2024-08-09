package com.vehicle.challan.repository;

import org.apache.catalina.User;
import org.springframework.data.jpa.repository.JpaRepository;

import com.vehicle.challan.entity.VehicleUser;

public interface VehicleUserRepository extends JpaRepository<VehicleUser, Long>{

	VehicleUser findByUserLoginId(String userLoginId);

}
