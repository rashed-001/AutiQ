package com.Autism.AutiQ.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.Autism.AutiQ.Model.User;
import com.Autism.AutiQ.Repository.UserRepository;
import com.Autism.AutiQ.Service.UserService;

@RestController
public class HomeController {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private UserService userService;
	
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
	
	@GetMapping("/registration")
	public ModelAndView registration()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("registration");
		return mv;
	}
	@PostMapping("/registration")
	public ModelAndView registration2(HttpServletRequest request, HttpServletResponse responser)throws ServletException, IOException
	{
		ModelAndView mv = new ModelAndView();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		// if user name already Taken 
		User user1 = userRepository.findByUsername(username);
		if(user1 != null)
		{
			mv.addObject("hasUser", "User name already Taken");
			mv.setViewName("registration");
			
			return mv;
		}
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		password = passwordEncoder.encode(password);
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setRole("USER");
		
		userService.addOrUpdate(user);
		
		mv.addObject("sc", "Account Create Successfully");
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
