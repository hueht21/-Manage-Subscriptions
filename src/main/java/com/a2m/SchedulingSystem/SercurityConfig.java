//package com.a2m.SchedulingSystem;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.authentication.AuthenticationProvider;
//import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//
//import com.a2m.SchedulingSystem.Entity.CustomUserDetails;
////import com.a2m.SchedulingSystem.Entity.CustomUserDetailsSevice;
//
////@SuppressWarnings("deprecation")
//@Configuration // cấu hình Sercurity
//@EnableWebSecurity
//public class SercurityConfig extends WebSecurityConfigurerAdapter{
//	
//	@Bean
//	public PasswordEncoder passwordEncoder()
//	{
//		return new BCryptPasswordEncoder();// mã hoá pass
//	}
//	
//	@Override
//    protected void configure(final AuthenticationManagerBuilder auth) throws Exception {
//		auth.inMemoryAuthentication()
//        .withUser("user1").password(passwordEncoder().encode("user1Pass")).roles("USER")
//        .and()
//        .withUser("user2").password(passwordEncoder().encode("user2Pass")).roles("USER")
//        .and()
//        .withUser("admin").password(passwordEncoder().encode("adminPass")).roles("ADMIN");
//    }
//	
////	@Autowired
////	CustomUserDetailsSevice customUserDetailsSevice;
////	@Autowired
////	private UserDetailsService userDetailsService;
////	
////	@Bean
////	AuthenticationProvider authenticationProvider() {
////		DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
////		provider.setUserDetailsService(userDetailsService);
////		provider.setPasswordEncoder(new BCryptPasswordEncoder());
////		return provider;
////	}
//	
//	
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
////		http.authorizeRequests()
////		.antMatchers("/assets/**" ).permitAll()
////		.antMatchers("/home" ).hasAnyAuthority("USER")
////		.anyRequest()
////		.authenticated().and()
////		.httpBasic();
////		.anyRequest().authenticated().and().
////		formLogin().loginPage("/login").permitAll()
////		.defaultSuccessUrl("/login?sucess")
////		.failureUrl("/login?false")
////		.loginProcessingUrl("/j_spring_security_check");
//		http.authorizeRequests().antMatchers("/", "/login", "/logout").permitAll();
//
//		http.authorizeRequests().antMatchers("/userInfo").access("hasAnyRole('ROLE_USER', 'ROLE_ADMIN')");
//
//		http.authorizeRequests().antMatchers("/admin").access("hasRole('ROLE_ADMIN')");
//
//		http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");
//
//		http.authorizeRequests().and().formLogin()//
//				.loginProcessingUrl("/j_spring_security_check") // Submit URL
//				.loginPage("/login")//
//				.defaultSuccessUrl("/login?sucess")//
//				.failureUrl("/login?error=true")//
//				.usernameParameter("username")//
//				.passwordParameter("password")
//				.and().logout().logoutUrl("/logout").logoutSuccessUrl("/logoutSuccessful");
//
////		http.authorizeRequests().and() //
////				.rememberMe().tokenRepository(this.persistentTokenRepository()) //
////				.tokenValiditySeconds(1 * 24 * 60 * 60); // 24h
//	}
//	
////	@Override
////	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
////	    auth.userDetailsService(customUserDetailsSevice).passwordEncoder(passwordEncoder());
////	}
//}
