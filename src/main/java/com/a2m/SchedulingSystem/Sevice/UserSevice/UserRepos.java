package com.a2m.SchedulingSystem.Sevice.UserSevice;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.a2m.SchedulingSystem.Entity.Customer;
import com.a2m.SchedulingSystem.Entity.Register;
import com.a2m.SchedulingSystem.Entity.User;

public interface UserRepos extends JpaRepository<User, Long> {

	// lay ra ten o trang admin
	
	@Query(value = " SELECT customer.NAME_CUSTOMER FROM user INNER JOIN customer ON user.ID_USER = customer.ID_USER WHERE user.ID_USER = ?" , nativeQuery = true)
	String findNameById(Long id);
	
	@Query(value = "SELECT * FROM user WHERE USER_NAME = ?" , nativeQuery = true)
	User findByUserName(String userName, String Pass);
	
	
	
}
