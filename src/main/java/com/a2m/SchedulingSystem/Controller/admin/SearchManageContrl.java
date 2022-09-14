package com.a2m.SchedulingSystem.Controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.a2m.SchedulingSystem.Entity.Customer;
import com.a2m.SchedulingSystem.Entity.CustomerAndListSchedule;
import com.a2m.SchedulingSystem.Entity.Register;
import com.a2m.SchedulingSystem.Sevice.ScheduleSevice.ScheduleSevice;

@Controller
public class SearchManageContrl {
	
	@Autowired
	ScheduleSevice scheduleSevice;
	
//	@GetMapping("/searchManager/{name}")
//	public Iterable<Register> getListByUser(Model model, @PathVariable String name)
//	{
//		CustomerAndListSchedule customerAndListSchedule = new CustomerAndListSchedule();
//		Iterable<Register> listRegisters = scheduleSevice.getListByName(name);
//		customerAndListSchedule.setListRegisters(listRegisters);
//		customerAndListSchedule.setCustomer(new Customer());
//
//		
//		model.addAttribute("listSchedueAndCustomer", customerAndListSchedule);
//		return listRegisters;
//	}
	@GetMapping("/searchManager/{name}")
	public String listRegiterByName(@PathVariable String name, Model model)
	{
		System.out.println("name khach hnag" + name);
		
		Iterable<Register> list = scheduleSevice.getListByName(name);
		CustomerAndListSchedule customerAndListSchedule = new CustomerAndListSchedule();
		customerAndListSchedule.setListRegisters(list);
		customerAndListSchedule.setCustomer(new Customer());

		
		model.addAttribute("listSchedueAndCustomer", customerAndListSchedule);
		
		return "Manage_Book";
	}
}
