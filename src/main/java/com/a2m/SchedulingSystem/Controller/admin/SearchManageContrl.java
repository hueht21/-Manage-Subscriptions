package com.a2m.SchedulingSystem.Controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SearchManageContrl {
	
	@PostMapping("/SearchManage")
	public String getListByUser()
	{
		return "";
	}
}
