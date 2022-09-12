package com.a2m.SchedulingSystem.Entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "schedule_fix")
public class Register implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_SCHEDULE")
	private Long ID;
	
	@Column(name = "NAME_CUSTOMER")
	private String nameCustomer;
	
	@Column(name = "DATE_SCHEDULE")
	private String dateSchedule;
	
	@Column(name = "DATE_TIME")
	private String dateTime;
	
	@Column(name = "NOTE")
	private String note;
	
	@Column(name = "STATUS")
	private int status;
	
	@Column(name = "EMAIL")
	private String email;
	
	@Column(name = "NUMBER_PHONE")
	private String numberPhone;
	
	@Column(name = "ADDRESS")
	private String address;
	
	
	/// khhac hang
	@ManyToOne
	@JoinColumn(name ="ID_CUSTOMER" , referencedColumnName = "ID_CUSTOMER")
	private Customer customer;
	
	
	// nhan vien sua
	@ManyToOne
	@JoinColumn(name ="ID_EMPLOYEE" , referencedColumnName = "ID_CUSTOMER")
	private Customer employee;
	
	
	
	public Customer getCustomer() {
		return customer;
	}
	public Customer getEmployee() {
		return employee;
	}
	public void setEmployee(Customer employee) {
		this.employee = employee;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getNumberPhone() {
		return numberPhone;
	}
	public void setNumberPhone(String numberPhone) {
		this.numberPhone = numberPhone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Long getID() {
		return ID;
	}
	public void setID(Long iD) {
		ID = iD;
	}
	public String getNameCustomer() {
		return nameCustomer;
	}
	public void setNameCustomer(String nameCustomer) {
		this.nameCustomer = nameCustomer;
	}
	public String getDateSchedule() {
		return dateSchedule;
	}
	public void setDateSchedule(String dateSchedule) {
		this.dateSchedule = dateSchedule;
	}
	public String getDateTime() {
		return dateTime;
	}
	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
}
