package com.Autism.AutiQ.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Autism.AutiQ.Model.User;
import com.Autism.AutiQ.Repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;

	public List<User> getAll() {

		return (List<User>) userRepository.findAll();
	}

	
	public User getById(Long Id) {

		return userRepository.findById(Id).orElse(null);
	}

	public User addOrUpdate(User data) {

		return userRepository.save(data);
	}


	public User delete(Long Id) {
		User deleted = null;
		try {
			deleted = userRepository.findById(Id).orElse(null);
			if (deleted == null) {
				throw new Exception("Learn not Available");
			} else {
				userRepository.deleteById(Id);
			}
		} catch (Exception ex) {

		}
		return deleted;
	}
}
