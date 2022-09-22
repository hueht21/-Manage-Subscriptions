package com.a2m.SchedulingSystem.Controller.AdminHT;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.a2m.SchedulingSystem.Sevice.CustomerSevice.CustomerSevice;
import com.a2m.SchedulingSystem.Sevice.MenuSevice.MenuSevice;
import com.a2m.SchedulingSystem.Sevice.RoleSevice.RoleSevice;

@Controller
public class ManageMenuCtrl {

	@Autowired
	CustomerSevice customerSevice;
	
	@Autowired
	MenuSevice menuSevice;
	
	@Autowired
	RoleSevice roleSevice;
	
	
	// vao trang quan ly menu
	@GetMapping("/manage_menu")
	public String viewManageMenu(Model model)
	{
	
		model.addAttribute("RoleMenu" , roleSevice.getRole());
		return "ManageMenuView";
	}
	
	//lien ke danh sach menu theo tung role
	@GetMapping("/item_menu/{id}")
	public String getMenuUser(@PathVariable Long id, Model model, Model model2)
	{
		//menuSevice.listMenuUser(id);
		model.addAttribute("listMenu",menuSevice.getListNoMenu(id));
		model2.addAttribute("listMenuUser",menuSevice.listMenuRole(id));
		return "itemmenu";
	}
	/// danh sach user
	@GetMapping("/user_role")
	public String getViewUserRole(Model model)
	{
		model.addAttribute("UserCustomer" , customerSevice.getListCustom());
		return "ViewUserRole";
	}
	
	// l
	@GetMapping("/item_role/{id}")
	public String getUserCustom(@PathVariable Long id, Model model, Model model2)
	{
		
		model.addAttribute("roleUser",roleSevice.getRoleUser(id));
		model2.addAttribute("listMenuUser",roleSevice.getRoleSelect(id));
		return "itemrole";
	}
}
