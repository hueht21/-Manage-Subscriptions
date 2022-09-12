package com.a2m.SchedulingSystem.Sevice.BookPending;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.a2m.SchedulingSystem.Entity.Register;
import com.a2m.SchedulingSystem.Sevice.ScheduleSevice.ScheduleSevice;



@Service
public class BookPenSevice {


	@Autowired
	ScheduleSevice scheduleSevice;
	
	public List<Register> getList()
	{
		return scheduleSevice.getListSchedue();
	}
	
	

}
