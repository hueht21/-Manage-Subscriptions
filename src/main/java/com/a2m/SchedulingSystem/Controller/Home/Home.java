package com.a2m.SchedulingSystem.Controller.Home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.a2m.SchedulingSystem.Entity.Menu;
import com.a2m.SchedulingSystem.Entity.User;
import com.a2m.SchedulingSystem.Entity.UserAndMenu;
import com.a2m.SchedulingSystem.Sevice.UserSevice.UserSevice;

@Controller
public class Home {

	@Autowired
	UserSevice userSevice;
	
	@GetMapping("/home")
	public String getHome( Model model)
	{
		int idd = 3;
		Long id = (long) idd;
		User user = userSevice.getUser(id).get();
		List<Menu> listMenus = user.getListMenu();	
		String nameUser = userSevice.getNameAccout(id);
		UserAndMenu userAndMenu = new UserAndMenu(nameUser, listMenus);	
		model.addAttribute("adminAccout", userAndMenu);
		return "test";
	}

	
}
