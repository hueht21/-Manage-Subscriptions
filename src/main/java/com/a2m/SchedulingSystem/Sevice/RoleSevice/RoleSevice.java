package com.a2m.SchedulingSystem.Sevice.RoleSevice;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.a2m.SchedulingSystem.Entity.Role;

@Service
public class RoleSevice {
	@Autowired
	RoleRepos roleRepos;
	
	public Iterable<Role> getRole()
	{
		return roleRepos.findAll();
	}
	
	// lay ra thông tin role theo user
	public List<Role> getRoleUser(Long idUser)
	{
		return roleRepos.finAllRole(idUser);
	}
	
	// lay ra danh sach role chua có của user
	public List<Role> getRoleSelect(Long id)
	{
		List<Role> list = new ArrayList<>();
		
		for (Role i : getRole()) {
			boolean containsElement = getRoleUser(id).contains(i);
			if(containsElement == false)
			{
				list.add(i);
			}
		}
		return list;
	}
	
//	public List<Role> getListRole()
//	{
//		return roleRepos.findAll();
//	}
}
