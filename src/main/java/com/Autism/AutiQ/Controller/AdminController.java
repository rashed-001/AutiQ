package com.Autism.AutiQ.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/admin")
public class AdminController {
	
	@GetMapping()
	public ModelAndView admin()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("obj", "Admin Deshboard");
		mv.setViewName("/admin/admin");
		return mv;
	}
}
