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
	
	@GetMapping("/bird")
	public ModelAndView bird()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("Name", "Bird");
		mv.addObject("catagory", 3);
		mv.setViewName("learn");
		return mv;
	}
	
	@GetMapping("/domestic")
	public ModelAndView domestic()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("Name", "Domistic Animals");
		mv.addObject("catagory", 4);
		mv.setViewName("learn");
		return mv;
	}
	
	@GetMapping("/wildAnimal")
	public ModelAndView wildAnimal()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("Name", "Wild Animals");
		mv.addObject("catagory", 5);
		mv.setViewName("learn");
		return mv;
	}
	
	@GetMapping("/weather")
	public ModelAndView weather()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("Name", "Weather");
		mv.addObject("catagory", 6);
		mv.setViewName("learn");
		return mv;
	}
	
	@GetMapping("/flowers")
	public ModelAndView flowers()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("Name", "flowers");
		mv.addObject("catagory", 7);
		mv.setViewName("learn");
		return mv;
	}
	
	@GetMapping("/vegetables")
	public ModelAndView vegetables()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("Name", "Vegetables");
		mv.addObject("catagory", 8);
		mv.setViewName("learn");
		return mv;
	}
	
	@GetMapping("/vehicles")
	public ModelAndView vehicles()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("Name", "Vehicles");
		mv.addObject("catagory", 9);
		mv.setViewName("learn");
		return mv;
	}
	
	@GetMapping("/bodyParts")
	public ModelAndView bodyParts()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("Name", "Body Parts");
		mv.addObject("catagory", 10);
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
