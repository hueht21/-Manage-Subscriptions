package com.a2m.SchedulingSystem.Sevice.RoleSevice;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.a2m.SchedulingSystem.Entity.Role;

public interface RoleRepos extends CrudRepository<Role, Long>{
	
	
	// lay ra 1 user theo role
	@Query(value = " SELECT USER_ID FROM user_role WHERE ROLE_ID = ? LIMIT 1" , nativeQuery = true)
	Long findIDUserRole(Long id);
	// lay ra thong tin role của user chọn
	@Query(value = "SELECT * FROM user_role INNER JOIN role ON user_role.ROLE_ID = role.ID_ROLE WHERE user_role.USER_ID = ?", nativeQuery = true)
	List<Role> finAllRole(Long idUser);
	

}
