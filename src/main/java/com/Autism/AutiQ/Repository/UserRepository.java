package com.Autism.AutiQ.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Autism.AutiQ.Model.User;

@Repository
public interface UserRepository extends CrudRepository< User, Integer> {

}
