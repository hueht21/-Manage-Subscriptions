package com.a2m.SchedulingSystem.Sevice.MenuSevice;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.a2m.SchedulingSystem.Entity.Menu;
import com.a2m.SchedulingSystem.Entity.Role;
import com.a2m.SchedulingSystem.Sevice.RoleSevice.RoleRepos;

@Service
public class MenuSevice {

	
	@Autowired
	MenuRepos menuRepos;
	
	@Autowired
	RoleRepos roleRepos;
	
	// lay ra danh sach menu cua user
	public List<Menu> listMenuUser(Long id)
	{
		return menuRepos.findByIdUser(id);
	}
	// lay ra danh sach tat ca cac menu
	public Iterable<Menu> getmenu()
	{
		return menuRepos.findAll();
	}
	// lay ra danh sach menu chua có của user
	public List<Menu> getMenuSelect(Long id)
	{
		List<Menu> list = new ArrayList<>();
		
		for (Menu i : getmenu()) {
			boolean containsElement = listMenuUser(id).contains(i);
			if(containsElement == false)
			{
				list.add(i);
			}
		}
		return list;
	}
	// lay ra id user cua role
	public Long getIdUserRole(Long idRole)
	{
		return roleRepos.findIDUserRole(idRole);
	}
	// lay ra dnah sach menu da co cua user
	public List<Menu> listMenuRole(Long idRole)
	{
		return menuRepos.findMenuRole(getIdUserRole(idRole));
	}
	
	// lay ra danh sach chưa có của userrole
	public List<Menu> getListNoMenu(Long idRole)
	{
		return getMenuSelect(getIdUserRole(idRole));
	}
	

	
}
