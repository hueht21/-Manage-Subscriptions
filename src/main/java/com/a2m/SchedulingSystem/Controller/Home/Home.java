package com.a2m.SchedulingSystem.Controller.Home;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.a2m.SchedulingSystem.Entity.Menu;
import com.a2m.SchedulingSystem.Entity.User;
import com.a2m.SchedulingSystem.Entity.UserAndMenu;
import com.a2m.SchedulingSystem.Sevice.UserSevice.UserSevice;

@Controller
public class Home {

	@Autowired
	UserSevice userSevice;
	
	@PostMapping("/home")
	public String getHome(@ModelAttribute User user1, Model model)
	{
		
		User user2 = new User();
		List<User> list = userSevice.checkUser(user1.getUserName(), user1.getPass());
		
		
		System.out.println("usẻe" + user1.getUserName());
		
		if(list.size() ==1)
		{
			System.out.println("usẻe" + userSevice.checkUser(user1.getUserName(),user1.getPass()).get(0).getID());
			int idd = 6;
			Long id = (long) idd;
			User user = userSevice.getUser(list.get(0).getID()).get();
			List<Menu> listMenus = user.getListMenu();	
			String nameUser = userSevice.getNameAccout(list.get(0).getID());
			UserAndMenu userAndMenu = new UserAndMenu(nameUser, listMenus);	
			model.addAttribute("adminAccout", userAndMenu);
			return "test";
		}
		else
		{
			return null;
		}
		
		
	}

	
}
