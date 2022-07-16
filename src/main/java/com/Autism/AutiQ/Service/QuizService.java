package com.Autism.AutiQ.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Autism.AutiQ.Model.Quiz;
import com.Autism.AutiQ.Repository.QuizRepository;


@Service
public class QuizService {
	@Autowired
	private QuizRepository quizRepository;

	public List<Quiz> getAll() {

		return (List<Quiz>) quizRepository.findAll();
	}

	
	public Quiz getById(int Id) {

		return quizRepository.findById(Id).orElse(null);
	}

	public Quiz addOrUpdate(Quiz data) {

		return quizRepository.save(data);
	}


	public Quiz delete(int Id) {
		Quiz deletedQuiz = null;
		try {
			deletedQuiz = quizRepository.findById(Id).orElse(null);
			if (deletedQuiz == null) {
				throw new Exception("Learn not Available");
			} else {
				quizRepository.deleteById(Id);
			}
		} catch (Exception ex) {

		}
		return deletedQuiz;
	}
}
