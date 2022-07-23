package com.Autism.AutiQ.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.Autism.AutiQ.Model.Quiz;
import com.Autism.AutiQ.Service.QuizService;

@RestController
@RequestMapping("/quiz")
public class QuizController {
	
	
	@Autowired
	private QuizService quizService;
	
	@GetMapping("/color")
	public ModelAndView quizColor()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("catagory", 1);
		mv.addObject("name", "Color");
		mv.setViewName("quiz");
		return mv;
	}
	
	@GetMapping("/fruit")
	public ModelAndView fruit()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("catagory", 2);
		mv.addObject("name", "Bird");
		mv.setViewName("quiz");
		return mv;
	}
	
	@GetMapping("/bodyParts")
	public ModelAndView bodyParts()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("catagory", 3);
		mv.addObject("name", "Body Parts");
		mv.setViewName("quiz");
		return mv;
	}
	
	@GetMapping("/different")
	public ModelAndView allMixture()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("catagory", 4);
		mv.addObject("name", "All Mixture ");
		mv.setViewName("quiz");
		return mv;
	}
	
	
	@GetMapping("/all")
	public List<Quiz> getAllLearningItem()
	{
		
		List<Quiz> quiz = null;
		try {
			quiz = quizService.getAll();  
		}
		catch(Exception ex)
		{
			ex.getMessage();
		}
		return quiz;
	}
}
