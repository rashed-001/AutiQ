package com.Autism.AutiQ.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.Autism.AutiQ.Model.Learn;
import com.Autism.AutiQ.Service.LearnService;

@RestController
@RequestMapping("/learning")
public class LearningController {
	
	@Autowired
	private LearnService learnService;
	
	
	@GetMapping("/color")
	public ModelAndView learningColor()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("Name", "Color");
		mv.addObject("catagory", 1);
		mv.setViewName("learn");
		return mv;
	}
	
	@GetMapping("/fruit")
	public ModelAndView learningFruit()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("Name", "Fruit");
		mv.addObject("catagory", 2);
		mv.setViewName("learn");
		return mv;
	}
	
	@GetMapping("/all")
	public List<Learn> getAllLearningItem()
	{
		
		List<Learn> learn = null;
		try {
			learn = learnService.getAll();  
		}
		catch(Exception ex)
		{
			ex.getMessage();
		}
		return learn;
	}
}
