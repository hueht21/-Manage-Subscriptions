package com.a2m.SchedulingSystem.Controller.Client;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.a2m.SchedulingSystem.Entity.Customer;
import com.a2m.SchedulingSystem.Sevice.CustomerSevice.CustomerSevice;
import com.a2m.SchedulingSystem.Sevice.UserSevice.UserSevice;

@Controller
public class CustomerContr {

	
	@Autowired
	private CustomerSevice customerSevice;
	
	@Autowired
	UserSevice userSevice;
	
	/// vào trang quản lý tài khoản User Client
	@GetMapping("/information_client")
	public String getAccoutClient(Model model) {

		
		int idd = 1;
		Long id = (long) idd;
		Optional<Customer> customer = customerSevice.getCustomer(id);
		model.addAttribute("customer", customer.get());
		return "AccoutClient";
	}
	
	/// Cập nhập thông tin tài khoản
	@PostMapping("/updateCustomer")
	public String updateCustomer(@ModelAttribute Customer customer, Model model) {
		
		// lay tam thông tin id = 1 để checks
		int idd = 1;
		Long id = (long) idd;
		System.out.println("Khachh hang " + customer.getNameCustomer() + customer.getNumberPhone());
		customer.setID(id);
		//customerSevice.updateCustomer(customer);	
		return "test";
	}
	
}
