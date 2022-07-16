package com.Autism.AutiQ.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Autism.AutiQ.Model.Learn;
import com.Autism.AutiQ.Repository.LearnRepository;

@Service
public class LearnService {
	
	@Autowired
	private LearnRepository learnRepository;

	public List<Learn> getAll() {

		return (List<Learn>) learnRepository.findAll();
	}

	
	public Learn getById(int Id) {

		return learnRepository.findById(Id).orElse(null);
	}

	public Learn addOrUpdate(Learn data) {

		return learnRepository.save(data);
	}


	public Learn delete(int Id) {
		Learn deletedLearn = null;
		try {
			deletedLearn = learnRepository.findById(Id).orElse(null);
			if (deletedLearn == null) {
				throw new Exception("Learn not Available");
			} else {
				learnRepository.deleteById(Id);
			}
		} catch (Exception ex) {

		}
		return deletedLearn;
	}
}
