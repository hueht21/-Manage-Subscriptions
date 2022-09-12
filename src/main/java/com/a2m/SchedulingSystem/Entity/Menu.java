package com.a2m.SchedulingSystem.Entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "menu")
public class Menu {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_MENU")
	private Long ID;
	
	@Column(name = "NAME_MENU")
	private String nameMenu;
	
	@Column(name = "MODULE_NAME")
	private String moduleName;

	@ManyToMany
	@JoinTable(
			name = "user_menu",
			joinColumns = @JoinColumn(name = "ID_MENU" ),
			inverseJoinColumns = @JoinColumn(name ="ID_USER")
		)
	private List<User> listUser;
	
	
	public List<User> getListUser() {
		return listUser;
	}

	public void setListUser(List<User> listUser) {
		this.listUser = listUser;
	}

	public Long getID() {
		return ID;
	}

	public void setID(Long iD) {
		ID = iD;
	}

	public String getNameMenu() {
		return nameMenu;
	}

	public void setNameMenu(String nameMenu) {
		this.nameMenu = nameMenu;
	}

	public String getModuleName() {
		return moduleName;
	}

	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}
	
	
	
	
	
	
}
