package com.a2m.SchedulingSystem.Controller.Client;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.a2m.SchedulingSystem.Entity.Customer;
import com.a2m.SchedulingSystem.Entity.Register;
import com.a2m.SchedulingSystem.Sevice.ScheduleSevice.ScheduleSevice;
import com.a2m.SchedulingSystem.Sevice.UserSevice.UserSevice;

@Controller
public class RegisterControl {

	@Autowired
	private ScheduleSevice scheduleSevice;

	@Autowired
	private UserSevice userSevice;
	

	
	/// vào trang đăng kí lịh dat
	@GetMapping("/schedule")
	public String getSchedule(Model model) {
		model.addAttribute("register", new Register());
		return "schedule";
	}

	// đăng ký
	@PostMapping("/insertSche")
	public ResponseEntity<Object> insertRegister(@ModelAttribute Register register) {
		System.out.println("Ten cua khah hang " + register.getNameCustomer() + " " + register.getDateSchedule());

		int idd = 1;
		Long id = (long) idd;

		Customer customer = new Customer();
		customer.setID(id);
		register.setCustomer(customer);
		scheduleSevice.insert(register);
		HashMap<String, String> map = new HashMap<>();
	    map.put("key", "value");
	    map.put("foo", "bar");
	    map.put("aa", "bb"); 
	    System.out.println("Co vao day" +new ResponseEntity<>(map, HttpStatus.OK));
		return new ResponseEntity<>(map, HttpStatus.OK);
	}

	/// vào trang danh sach dang ky
	@GetMapping("/register_calendar")
	public String listRegiter(Model model) {

		List<Register> listRegi = scheduleSevice.getListSchedueUser();
		model.addAttribute("register", listRegi);
		return "RegisteredCalendar";
	}


}
