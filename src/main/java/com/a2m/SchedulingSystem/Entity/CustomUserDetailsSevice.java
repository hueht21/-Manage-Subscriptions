//package com.a2m.SchedulingSystem.Entity;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Service;
//
//import com.a2m.SchedulingSystem.Sevice.UserSevice.UserRepos;
//
//@Service
//public class CustomUserDetailsSevice implements UserDetailsService {
//
//	@Autowired
//	UserRepos userRepos;
//
//	@Override
//	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//		User user = userRepos.findByUserName(username);
//		//System.out.println("usss" + user.getUserName());
//		if (user == null) {
//			throw new UsernameNotFoundException("Not Foud");
//		} else {
//			// List<String> roleNames = this.appRoleDAO.getRoleNames(appUser.getUserId());
//
//			List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
//
//			GrantedAuthority grantedAuthority = new SimpleGrantedAuthority("USER");
//			grantList.add(grantedAuthority);
//			UserDetails userDetails = new org.springframework.security.core.userdetails.User(user.getUserName(),
//					user.getPass(), grantList);
//			System.out.println("usss" + user.getUserName());
//			return userDetails;
//		}
//	}
//
//}
