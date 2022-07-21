package com.Autism.AutiQ.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.Autism.AutiQ.Model.User;
import com.Autism.AutiQ.Repository.UserRepository;
import com.Autism.AutiQ.WebSecurity.CustomUserDetails;

@Service
public class CustomUserDetailsService implements UserDetailsService{

	@Autowired
	private UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		User user = userRepository.findByUsername(username);
		
		 if(user == null)
		 {
			 throw new UsernameNotFoundException("User not Found");
		 }
		return new CustomUserDetails(user);
	}
	
}
