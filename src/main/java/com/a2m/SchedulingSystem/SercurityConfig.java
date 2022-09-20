package com.a2m.SchedulingSystem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

//@SuppressWarnings("deprecation")
@Configuration // cấu hình Sercurity
@EnableWebSecurity
public class SercurityConfig extends WebSecurityConfigurerAdapter{
	
	@Bean
	public PasswordEncoder passwordEncoder()
	{
		return new BCryptPasswordEncoder();// mã hoá pass
	}
//	@Autowired
//	private UserDetailsService userDetailsService;
//	
//	@Bean
//	AuthenticationProvider authenticationProvider() {
//		DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
//		provider.setUserDetailsService(userDetailsService);
//		provider.setPasswordEncoder(new BCryptPasswordEncoder());
//		return provider;
//	}
	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/assets/**" ).permitAll()
//		.antMatchers("/home" ).hasAnyAuthority("USER")
//		.anyRequest()
//		.authenticated().and()
//		.httpBasic();
		.anyRequest().authenticated().and().
		formLogin().loginPage("/login" ).permitAll()
		.defaultSuccessUrl("/login?sucess")
		.failureUrl("/login?false")
		.loginProcessingUrl("/j_spring_security_check");
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	    auth.inMemoryAuthentication()
	        .withUser("user1").password(passwordEncoder().encode("1234")).authorities("ROLE_USER");
	}
}
