package com.a2m.SchedulingSystem.Sevice.CustomerSevice;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.a2m.SchedulingSystem.Entity.Customer;

@Service
public class CustomerSevice {

	@Autowired
	CustomerRepos customerRepos;
	
	
	public Optional<Customer> getCustomer(Long id)
	{
		
		Optional<Customer> customer = customerRepos.findById(id);
		return customer;
	}
	public void updateCustomer(Customer customer)
	{
		customerRepos.save(customer);
	}
}
