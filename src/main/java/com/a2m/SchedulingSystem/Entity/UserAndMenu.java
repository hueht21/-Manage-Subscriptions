package com.a2m.SchedulingSystem.Entity;

import java.util.List;

public class UserAndMenu {

	
	private String nameUser;
	private List<Menu> listMenus;
	
	
	public UserAndMenu(String nameUser, List<Menu> listMenus) {
		super();
		this.nameUser = nameUser;
		this.listMenus = listMenus;
	}
	public String getNameUser() {
		return nameUser;
	}
	public void setNameUser(String nameUser) {
		this.nameUser = nameUser;
	}
	public List<Menu> getListMenus() {
		return listMenus;
	}
	public void setListMenus(List<Menu> listMenus) {
		this.listMenus = listMenus;
	}
	
}
