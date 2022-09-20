package com.a2m.SchedulingSystem.Controller.Home;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.a2m.SchedulingSystem.Entity.Customer;
import com.a2m.SchedulingSystem.Entity.Register;
import com.a2m.SchedulingSystem.Entity.User;
import com.a2m.SchedulingSystem.Sevice.Approve.ApproveSevice;
import com.a2m.SchedulingSystem.Sevice.CustomerSevice.CustomerRepos;
import com.a2m.SchedulingSystem.Sevice.CustomerSevice.CustomerSevice;
import com.a2m.SchedulingSystem.Sevice.ScheduleSevice.ScheduleSevice;
import com.a2m.SchedulingSystem.Sevice.UserSevice.UserSevice;

@RestController
@RequestMapping("/test")
public class TestAPIData {

	@Autowired
	ScheduleSevice scheduleSevice;
	
	@Autowired
	UserSevice userSevice;
	
	@Autowired
	ApproveSevice approveSevice; 
	
	@Autowired
	CustomerSevice customerSevice;
	
	@GetMapping("")
	public  Iterable<Register> getList()
	{
		return scheduleSevice.getListSchedu();
	}
	
	
	@GetMapping("/user")
	public  Iterable<User> getListUser()
	{
		return userSevice.getList();
	}
	
	@GetMapping("/user/{id}")
	public User getUser(@PathVariable Long id)
	{
		
		User user = userSevice.getUser(id).get();
		
		System.out.println("menu " + user.getListMenu().get(0).getNameMenu());
		return user;
	}
	@PostMapping("")
	public Register insertRegister(@RequestBody Register register)
	{
		System.out.println("Ten cua khah hang " + register.getNameCustomer() + " "+ register.getDateSchedule()  );
		//scheduleSevice.insert(register);
		return register;
	}
	@GetMapping("/selectSchedue")
	public List<Register> listRegiter()
	{
		
		List<Register> list = scheduleSevice.getListSchedueByEmployee();
//		for (Integer id : approveSevice.getIdEmployee()) {
//			
//			System.out.println("id danh sach " + id);
//		}
//		for (Integer id : approveSevice.getIdEmployeeSchedue()) {
//			
//			System.out.println("id danh sach Schedule" + id);
//		}
		
		//approveSevice.checkID();
		return list;
	}
	
	@PostMapping("/selectSchedueByName")
	public ResponseEntity<?> listRegiterByName(@RequestBody String name)
	{
		System.out.println("name khach hnag" + name);
		Iterable<Register> list = scheduleSevice.getListByName(name);
		//System.out.println("danh sach" + list.size());
		return ResponseEntity.ok(list);
	}
	@GetMapping("/customer")
	public Iterable<Customer> getCustommer()
	{
		return customerSevice.getListCustomer();
	}
}
