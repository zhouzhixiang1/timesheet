package com.timesheet.entity;

import java.sql.Date;
import java.sql.Time;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="DIPENDENTE_TICKET")
public class DipendenteTicket {
	
	private Integer idDipendenteTicket;
	private Double oreLavorate;
	private Date data;
	private String descrizione;
	private Users Users;
	private Ticket idTicket;

	
	@Id
	@GeneratedValue
	public Integer getIdDipendenteTicket() {
		return idDipendenteTicket;
	}
	public void setIdDipendenteTicket(Integer idDipendenteTicket) {
		this.idDipendenteTicket = idDipendenteTicket;
	}
	@JoinColumn(name="username")
	@ManyToOne(cascade = CascadeType.REMOVE)
	public Users getUsers() {
		return Users;
	}
	public void setUsers(Users users) {
		Users = users;
	}
	
	@JoinColumn(name="idTicket")
	@ManyToOne(cascade = CascadeType.REMOVE)
	public Ticket getIdTicket() {
		return idTicket;
	}
	public void setIdTicket(Ticket idTicket) {
		this.idTicket = idTicket;
	}

	public Double getOreLavorate() {
		return oreLavorate;
	}
	public void setOreLavorate(Double oreLavorate) {
		this.oreLavorate = oreLavorate;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	
	
	
	
	

}