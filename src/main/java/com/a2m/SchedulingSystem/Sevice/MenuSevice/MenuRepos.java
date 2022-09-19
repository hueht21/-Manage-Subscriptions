package com.a2m.SchedulingSystem.Sevice.MenuSevice;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.a2m.SchedulingSystem.Entity.Menu;

public interface MenuRepos extends CrudRepository<Menu, Long> {
	
	@Query(value = " SELECT * FROM menu INNER JOIN user_menu ON menu.ID_MENU = user_menu.ID_MENU WHERE user_menu.ID_USER = ?" , nativeQuery = true)
	List<Menu> findByIdUser(Long id);
	
//	@Query(value = " SELECT * FROM menu INNER JOIN user_menu ON menu.ID_MENU = user_menu.ID_MENU WHERE user_menu.ID_USER = ?" , nativeQuery = true)
//	List<Menu> findByIdNotUser(Long id);

}
