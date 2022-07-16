package com.Autism.AutiQ.Service;

import java.util.List;

import com.Autism.AutiQ.Model.User;

public interface UserService {

	 public List<User> getAllUser();
	 public User getUserById(int userId);
	 public User addOrUpdateUser(User user);
	 public User deleteUser(int userId);
	 
	 
}
