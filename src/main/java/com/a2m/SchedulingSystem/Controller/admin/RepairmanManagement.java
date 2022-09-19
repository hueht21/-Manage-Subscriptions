package com.a2m.SchedulingSystem.Controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.a2m.SchedulingSystem.Entity.Register;
import com.a2m.SchedulingSystem.Sevice.ScheduleSevice.ScheduleSevice;

@Controller
public class RepairmanManagement {

	
	@Autowired
	ScheduleSevice scheduleSevice;
	
	@GetMapping("/repair_manage")
	public String getRepairManage(Model model)
	{
		List<Register> listRegisters = scheduleSevice.getListSchedueByEmployee();
		
		//System.out.println("name danh sanh là  : " + listRegisters.get(0).getNameCustomer());
		
		System.out.println("so luong " + listRegisters.size());
		model.addAttribute("listSchedueEmployy", listRegisters);
		return "repairmanage";
	}
	
}
