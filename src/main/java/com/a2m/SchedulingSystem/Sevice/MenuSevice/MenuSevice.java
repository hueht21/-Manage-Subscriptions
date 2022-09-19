package com.a2m.SchedulingSystem.Sevice.MenuSevice;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.a2m.SchedulingSystem.Entity.Menu;

@Service
public class MenuSevice {

	
	@Autowired
	MenuRepos menuRepos;
	
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
	
}
