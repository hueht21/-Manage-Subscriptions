package com.a2m.SchedulingSystem.Controller.AccoutCtrl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.a2m.SchedulingSystem.Entity.User;

@Controller
public class LoginCtrl {

	@GetMapping("/login")
	public String getPageLogin(Model model)
	{
		model.addAttribute("userlogin", new User());
		return "login";
	}
//	@PostMapping("/j_spring_security_check")
//	public String getHome()
//	{
//		return "home";
//	}
}
