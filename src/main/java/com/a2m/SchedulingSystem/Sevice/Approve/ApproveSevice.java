package com.a2m.SchedulingSystem.Sevice.Approve;



import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.a2m.SchedulingSystem.Entity.Customer;
import com.a2m.SchedulingSystem.Entity.Register;
import com.a2m.SchedulingSystem.Sevice.CustomerSevice.CustomerRepos;
import com.a2m.SchedulingSystem.Sevice.ScheduleSevice.ScheduleSevice;

@Service
public class ApproveSevice {

	
	@Autowired
	CustomerRepos customerRepos;
	
	@Autowired
	ScheduleSevice scheduleSevice;
	
	private List<Integer> getIdEmployee()
	{
		return customerRepos.findIDEmployee();
	}
	
	private List<Integer> getIdEmployeeSchedue(int Moth)
	{
		return customerRepos.findIDEmployeeSchechue(Moth);
	}
	
	public void checkID(Register register)
	{
		
		int checkId = 0;
		int moth = 1;
		// lây ra tháng khách hàng đăng ký
		SimpleDateFormat curFormater = new SimpleDateFormat("yyyy-MM-dd"); 
		try {
			Date dateObj = curFormater.parse(register.getDateSchedule());
			Calendar calendar = Calendar.getInstance();
			calendar .setTime(dateObj);
			 moth = calendar.get(Calendar.MONTH) + 1;
			System.out.println("ngay sau khi con vẻt" + moth);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		
		if(getIdEmployeeSchedue(moth).size() ==0)
		{
			System.out.println("List đang null"); // lây ra id đầu tiên của list getIdEmployee
			checkId = getIdEmployee().get(0);
		}
		else
		{
			
			for (Integer idEml : getIdEmployee()) {
				boolean chcc = false;
				System.out.println("đây là iooooo " + idEml);
				boolean containsElement = getIdEmployeeSchedue(moth).contains(idEml);
				//containsElement = true ? System.out.println("He thong đang la true " ) : System.out.println("He thong đang la ");
				
				if(containsElement == true)
				{
					System.out.println("He thong đang la true " + idEml);
				}
				else
				{
					System.out.println("He thong đang la fale " + idEml);
					checkId= idEml;
					break;
				}
				
			}
		}
		
		System.out.println("He thong đang là fales " + checkId);
		if(checkId ==0)
		{
			getIDEmployee(register);
		}
		else
		{
			System.out.println("He thong đang bang 0 " + checkId);
			Long IdEmployee =(long) checkId;
			updateSchedule(register, IdEmployee);
		}
	}
	
	private void getIDEmployee(Register register)
	{
		int IdEmployee = customerRepos.findLimitID();
		Long IdEmployeeNV = (long) IdEmployee;
		System.out.println("đây là id lấy được" +IdEmployee);
		updateSchedule(register , IdEmployeeNV);
		
		
	}
	private void updateSchedule(Register register, Long id)
	{
		register.setStatus(1);
		Customer customer = new Customer();
		customer.setID(id);
		register.setEmployee(customer);
		scheduleSevice.insert(register);
	}
}
