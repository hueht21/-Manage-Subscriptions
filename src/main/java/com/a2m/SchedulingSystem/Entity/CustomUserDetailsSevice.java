package com.a2m.SchedulingSystem.Entity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.a2m.SchedulingSystem.Sevice.UserSevice.UserRepos;


@Service
public class CustomUserDetailsSevice implements UserDetailsService{

	
	@Autowired
	UserRepos userRepos;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepos.findByUserName(username);
		if(user == null)
		{
			throw new UsernameNotFoundException("Not Foud");
		}
		System.out.println("usser" + user.getUserName());
		return new CustomUserDetails(user);
	}
	
}
