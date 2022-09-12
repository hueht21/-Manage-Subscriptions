package com.a2m.SchedulingSystem.Sevice.CustomerSevice;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.a2m.SchedulingSystem.Entity.Customer;

public interface CustomerRepos  extends CrudRepository<Customer, Long>{

	// lay ra danh sach id nhân viên
	@Query(value = "SELECT customer.ID_CUSTOMER FROM user INNER JOIN customer ON customer.ID_USER = user.ID_USER INNER JOIN user_role ON user.ID_USER = user_role.USER_ID WHERE user_role.ROLE_ID = 4" , nativeQuery = true)
	List<Integer> findIDEmployee();
	
	// lấy ra danh sách id nhân viên trong bảng đặt lịch mà có tháng bằng tháng hiện tại
	@Query(value = "SELECT ID_EMPLOYEE FROM schedule_fix WHERE ID_EMPLOYEE IS NOT NULL and MONTH(DATE_SCHEDULE) = ? GROUP BY ID_EMPLOYEE" , nativeQuery = true)
	List<Integer> findIDEmployeeSchechue(int month);
	
	
	// lấy ra id có số lần đặt ít nhất
	@Query(value = "SELECT ddcc.ID_EMPLOYEE FROM (SELECT COUNT(ID_EMPLOYEE) AS SoLan, ID_EMPLOYEE FROM schedule_fix WHERE ID_EMPLOYEE IS NOT NULL GROUP BY ID_EMPLOYEE ORDER BY SoLan ASC LIMIT 1) ddcc", nativeQuery = true)
	Integer findLimitID();
}
