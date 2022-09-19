package com.a2m.SchedulingSystem.Controller.AdminHT;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.a2m.SchedulingSystem.Sevice.CustomerSevice.CustomerSevice;
import com.a2m.SchedulingSystem.Sevice.MenuSevice.MenuSevice;

@Controller
public class ManageMenuCtrl {

	@Autowired
	CustomerSevice customerSevice;
	
	@Autowired
	MenuSevice menuSevice;
	// vao trang quan ly menu
	@GetMapping("/manage_menu")
	public String viewManageMenu(Model model)
	{
	
		model.addAttribute("customeremployee" , customerSevice.getListCustomer());
		return "ManageMenuView";
	}
	
	//lien ke danh sach menu theo tung user
//	@GetMapping("/item_menu/{id}")
//	public String getMenuUser(@PathVariable Long id, Model model)
//	{
//		//menuSevice.listMenuUser(id);
//		model.addAttribute("listMenuUser",menuSevice.listMenuUser(id));
//		return "itemmenu";
//	}
	@GetMapping("/item_menu/{id}")
	public String getMenuUser(@PathVariable Long id, Model model, Model model2)
	{
		//menuSevice.listMenuUser(id);
		model.addAttribute("listMenu",menuSevice.getMenuSelect(id));
		model2.addAttribute("listMenuUser",menuSevice.listMenuUser(id));
		return "itemmenu";
	}
}
