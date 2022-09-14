package com.a2m.SchedulingSystem.Entity;

public class CustomerAndListSchedule {

	
	Customer customer;
	Iterable<Register> listRegisters;
	
	
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Iterable<Register> getListRegisters() {
		return listRegisters;
	}
	public void setListRegisters(Iterable<Register> listRegisters) {
		this.listRegisters = listRegisters;
	}
	
	
}
