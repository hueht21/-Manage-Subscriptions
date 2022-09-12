package com.a2m.SchedulingSystem.Controller.admin;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.a2m.SchedulingSystem.Entity.Register;
import com.a2m.SchedulingSystem.Sevice.BookPending.BookPenSevice;
import com.a2m.SchedulingSystem.Sevice.ScheduleSevice.ScheduleSevice;

@Controller
public class BookPending {
	
	
	
	@Autowired
	BookPenSevice bookPenSevice;
	
	@Autowired
	ScheduleSevice scheduleSevice;
	
	
	// vao trang quan lý lịch đang chờ
	@GetMapping("/book_pending")
	public String getBookPending(Model model)
	{
		
		List<Register> listRegisters = bookPenSevice.getList();
		
		//System.out.println("name danh sanh là  : " + listRegisters.get(0).getNameCustomer());
		
		
		model.addAttribute("listSchedue", listRegisters);
		return "book_pending";
	}
	// xoa lich theo id
	@PostMapping("/deleteSchedle/{id}")
	public ResponseEntity<Object> deleteSchue(@PathVariable Long id)
	{
		
		System.out.println("lay id " + id);
		//scheduleSevice.deleteSchue(id);
		HashMap<String, String> map = new HashMap<>();
	    map.put("key", "value");
	    map.put("foo", "bar");
	    map.put("aa", "bb"); 
	    System.out.println(new ResponseEntity<>(map, HttpStatus.OK));
		return new ResponseEntity<>(map, HttpStatus.OK);
	}
	// vao trang edit lich truyen vao id
	@GetMapping("/editSchedule/{id}")
	public String editSchedule(@PathVariable Long id, Model model)
	{
		System.out.println("id la : " + id);
		model.addAttribute("register", scheduleSevice.getSchedule(id));
		return "EditSchedule";
	}
	// chinh sửa lịch đặt
	@PostMapping("/updateSchedule")
	public ResponseEntity<Object> updateSchedule(@ModelAttribute Register register)
	{
		
		
		System.out.println("Id cua update " + register.getID() + "name " +  register.getNameCustomer() + register.getEmail());
		//scheduleSevice.updateSchedule(register);
		HashMap<String, String> map = new HashMap<>();
	    map.put("key", "value");
	    map.put("foo", "bar");
	    map.put("aa", "bb"); 
	    System.out.println("Co vao day" +new ResponseEntity<>(map, HttpStatus.OK));
		return new ResponseEntity<>(map, HttpStatus.OK);
		
	}
	
	
}
