package com.vehicle.challan.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Table(name = "VEHICLE")
@Entity
public class Vehicle {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "VEHICLE_ID")
    private Long id;

    @Column(name = "VEHICLE_NUMBER")
    private String vNumber;

    @JsonManagedReference
    @OneToMany(mappedBy = "vehicle", cascade = CascadeType.ALL)
    private List<Challan> challanList;
    
    @Column(name = "OWNER_FIRST_NAME")
    private String oFName;

    @Column(name = "OWNER_LAST_NAME")
    private String oLName;

    @Column(name = "OWNER_PHONE_NUMBER")
    private Long oPNumber;
    
    @ManyToOne
    @JoinColumn(name = "USER_ID")
    private VehicleUser vehicle_user;
    
    

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<Challan> getChallan() {
		return challanList;
	}

	public void setChallan(List<Challan> challanList) {
		this.challanList = challanList;
	}

	public String getvNumber() {
		return vNumber;
	}

	public void setvNumber(String vNumber) {
		this.vNumber = vNumber;
	}

	public List<Challan> getChallanList() {
		return challanList;
	}

	public void setChallanList(List<Challan> challanList) {
		this.challanList = challanList;
	}

	public String getoFName() {
		return oFName;
	}

	public void setoFName(String oFName) {
		this.oFName = oFName;
	}

	public String getoLName() {
		return oLName;
	}

	public void setoLName(String oLName) {
		this.oLName = oLName;
	}

	public Long getoPNumber() {
		return oPNumber;
	}

	public void setoPNumber(Long oPNumber) {
		this.oPNumber = oPNumber;
	}

	public VehicleUser getVehicle_user() {
		return vehicle_user;
	}

	public void setVehicle_user(VehicleUser vehicle_user) {
		this.vehicle_user = vehicle_user;
	}
	
	
}
