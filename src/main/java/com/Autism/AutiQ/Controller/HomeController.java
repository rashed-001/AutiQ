package com.Autism.AutiQ.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HomeController {
	@RequestMapping("/")
	public ModelAndView home()
	{

		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@RequestMapping("/login")
	public ModelAndView login()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping("/home")
	public ModelAndView home1()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@RequestMapping("/learningItems")
	public ModelAndView root()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("learningItems");
		return mv;
	}
	
	@RequestMapping("/puzzle")
	public ModelAndView puzzle()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("puzzle");
		return mv;
	}
	
	@RequestMapping("/about")
	public ModelAndView about()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");
		return mv;
	}
	
	@RequestMapping("/contact")
	public ModelAndView contact()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contact");
		return mv;
	}
	
}
