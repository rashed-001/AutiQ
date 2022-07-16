package com.Autism.AutiQ.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HomeController {
	@RequestMapping("/")
	public ModelAndView home()
	{
		System.out.println("Good Best");
		ModelAndView mv = new ModelAndView();
		mv.addObject("obj", "Hi Mehedi");
		mv.setViewName("home");
		return mv;
	}
	@RequestMapping("home")
	public ModelAndView home1()
	{
		System.out.println("Mehedi");
		ModelAndView mv = new ModelAndView();
		mv.addObject("obj", "Hi Mehedi");
		mv.setViewName("home");
		return mv;
	}
	
	@RequestMapping("/learningItems")
	public ModelAndView root()
	{
		System.out.println("Mehedi");
		ModelAndView mv = new ModelAndView();
		mv.addObject("obj", "Hi Mehedi");
		mv.setViewName("learningItems");
		return mv;
	}
	
	
}
