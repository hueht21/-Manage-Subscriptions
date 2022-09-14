package com.a2m.SchedulingSystem.Controller.admin;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.a2m.SchedulingSystem.Entity.Customer;
import com.a2m.SchedulingSystem.Entity.CustomerAndListSchedule;
import com.a2m.SchedulingSystem.Entity.Register;
import com.a2m.SchedulingSystem.Sevice.Approve.ApproveSevice;
import com.a2m.SchedulingSystem.Sevice.ScheduleSevice.ScheduleSevice;


@Controller
public class ManageBookCtrl {

	
	@Autowired
	ScheduleSevice scheduleSevice;
	
	@Autowired
	ApproveSevice approveSevice;
	
	// vao trang quản lý lịch đặt
		@GetMapping("/manage_book")
		public String manageBook(Model model)
		{
			CustomerAndListSchedule customerAndListSchedule = new CustomerAndListSchedule();
			Iterable<Register> listRegisters = scheduleSevice.getListAll();
			customerAndListSchedule.setListRegisters(listRegisters);
			customerAndListSchedule.setCustomer(new Customer());

			
			model.addAttribute("listSchedueAndCustomer", customerAndListSchedule);
			return "Manage_Book";
		}
		
		// phe duyen lich của khách hàng
		@PostMapping("/approved/{id}")
		public ResponseEntity<Object> setApproved(@PathVariable Long id)
		{
			
			System.out.println("đay la id " + id);
			Register register = scheduleSevice.getSchedule(id);
			approveSevice.checkID(register);
			
			
			HashMap<String, String> map = new HashMap<>();
		    map.put("key", "value");
		    System.out.println("Co vao day" +new ResponseEntity<>(map, HttpStatus.OK));
			return new ResponseEntity<>(map, HttpStatus.OK);
		}
		
}
