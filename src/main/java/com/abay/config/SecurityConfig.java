package com.abay.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.*;
import org.springframework.security.config.annotation.authentication.builders.*;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.*;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.security.web.authentication.logout.SimpleUrlLogoutSuccessHandler;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication()
		.withUser("john").password("test123").roles("EMPLOYEE");
		auth.inMemoryAuthentication()
		.withUser("marry").password("test123").roles("MANAGER");
		auth.inMemoryAuthentication()
		.withUser("abay").password("test123").roles("ADMIN");	
	}
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http
		.authorizeRequests()                                                                
	        .antMatchers("/resources/**", "/index", "/customer/saveCustomer", "/", "/home", "/login**").permitAll()
	        .antMatchers("/admin/**").hasRole("ADMIN")
			.anyRequest().authenticated()
		.and()
		.formLogin()
			.loginPage("/login")
			.defaultSuccessUrl("/customer/list")
//			.failureUrl("/login?error")
			.permitAll()
		.and()
	    .logout()
	    	.logoutUrl("/logout")
//	    	.logoutSuccessUrl("/index")
	        .invalidateHttpSession(true);

	}

}
