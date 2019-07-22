package com.timesheet.entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="WEB_DIPENDENTI")
@Entity
public class Dipendente {
	
	private String username;
	private Double oreLavorate;
	
	@Id 
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Double getOreLavorate() {
		return oreLavorate;
	}
	public void setOreLavorate(Double oreLavorate) {
		this.oreLavorate = oreLavorate;
	}
	
	
}
