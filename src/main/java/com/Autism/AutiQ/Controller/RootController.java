package com.Autism.AutiQ.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RootController {
	
	@RequestMapping("root")
	public ModelAndView root()
	{

		ModelAndView mv = new ModelAndView();
		mv.setViewName("root");
		
		return mv;
	}
}
