package com.jhta.finalproject.sec;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.jhta.finalproject.service.MembersService;

public class CustomUserDetailService implements UserDetailsService{
	@Autowired private MembersService service;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		CustomUserDetail userDetail = service.userDetail(username);
		return userDetail;
	}

}
