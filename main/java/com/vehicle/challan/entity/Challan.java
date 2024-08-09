package com.vehicle.challan.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Table(name = "CHALLAN")
@Entity

public class Challan {
	 	@Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
	    @Column(name = "CHALLAN_ID")
	    private Long id;

	    @Column(name = "FINE_TYPE")
	    private String fineType;

	    @Column(name = "FINE")
	    private Long fine;

	    @Column(name = "CHALLAN_DATE")
	    private Date challanDate;

	    @JsonBackReference
	    @ManyToOne
	    @JoinColumn(name = "VEHICLE_ID")
	    private Vehicle vehicle;

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getFineType() {
			return fineType;
		}

		public void setFineType(String fineType) {
			this.fineType = fineType;
		}

		public Long getFine() {
			return fine;
		}

		public void setFine(Long fine) {
			this.fine = fine;
		}

		public Date getChallanDate() {
			return challanDate;
		}

		public void setChallanDate(Date challanDate) {
			this.challanDate = challanDate;
		}

		public Vehicle getVehicle() {
			return vehicle;
		}

		public void setVehicle(Vehicle vehicle) {
			this.vehicle = vehicle;
		}
		 public Challan(Long id, String fineType, Long fine, Date challanDate, Vehicle vehicle) {
		        this.id = id;
		        this.fineType = fineType;
		        this.fine = fine;
		        this.challanDate = challanDate;
		        this.vehicle = vehicle;
		}
		 
		 public Challan() {
		}

}
