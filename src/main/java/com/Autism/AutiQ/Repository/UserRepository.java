package com.Autism.AutiQ.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Autism.AutiQ.Model.User;

@Repository
public interface UserRepository extends JpaRepository< User, Long> {
	User findByUsername(String username); 
}
