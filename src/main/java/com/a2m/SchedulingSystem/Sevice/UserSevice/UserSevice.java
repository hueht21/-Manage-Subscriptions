package com.a2m.SchedulingSystem.Sevice.UserSevice;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.a2m.SchedulingSystem.Entity.User;


@Service
public class UserSevice{

	@Autowired
	UserRepos userRepos;
	
	
	public Iterable<User> getList()
	{
		return userRepos.findAll();
	}
	public Optional<User> getUser(Long id)
	{
		
		Optional<User> user = userRepos.findById(id);
		return user;
	}
	
	// lay ra ten accout
	public String getNameAccout(Long id)
	{
		return userRepos.findNameById(id);
	}
	
	// lây ra danh sách role
	
	public List<User> checkUser(String userName,String Pass)
	{
		
		List<User> list = new ArrayList();
		User user = userRepos.findByUserName(userName,Pass);
		if(user == null)
		{
			
		}
		else
		{
			list.add(user);
		}
		return list;
	}
	

}
