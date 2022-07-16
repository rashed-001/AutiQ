package com.Autism.AutiQ.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Autism.AutiQ.Model.Learn;

@Repository
public interface LearnRepository extends CrudRepository<Learn, Integer> {

}
