package com.Autism.AutiQ.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Autism.AutiQ.Model.Quiz;

@Repository
public interface QuizRepository extends CrudRepository<Quiz, Integer> {

}
