package com.vehicle.challan.controller;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.vehicle.challan.entity.Challan;
import com.vehicle.challan.entity.VehicleUser;
import com.vehicle.challan.repository.VehicleUserRepository;
import com.vehicle.challan.services.ChallanService;
import com.vehicle.challan.services.VehicleUserService;

@RestController
@RequestMapping("/user")
public class VehicleUserController {

	@Autowired
	private VehicleUserService userService;

	@PostMapping("/registerUser")
	public ResponseEntity<VehicleUser> registerUser(@RequestBody VehicleUser user){
		return ResponseEntity.ok(userService.save(user));
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public boolean login(@RequestParam("userLoginId") String username, @RequestParam("password") String password) {
		return userService.login(username, password);
	}

}
