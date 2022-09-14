package com.a2m.SchedulingSystem.Controller.admin;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.a2m.SchedulingSystem.Entity.Customer;
import com.a2m.SchedulingSystem.Sevice.CustomerSevice.CustomerSevice;
import com.a2m.SchedulingSystem.Sevice.UserSevice.UserSevice;

@Controller
public class UpdatePassContrl {

	
	@Autowired
	private CustomerSevice customerSevice;
	
	@Autowired
	UserSevice userSevice;
	
	@GetMapping("/change_password")
	public String getUpdatePass(Model model, Model model2)
	{
		int idd = 3;
		Long id = (long) idd;
		Optional<Customer> customer = customerSevice.getCustomer(id);
		model.addAttribute("customer" , customer.get());
		model2.addAttribute("customerr", new Customer());
		return "UpdatePass";
	}
	
}
