package com.Autism.AutiQ.Controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


import com.Autism.AutiQ.Model.Learn;
import com.Autism.AutiQ.Service.LearnService;

@RestController
@RequestMapping("/admin/add/learning")
public class AddLearningItemController {
	
	@Autowired
	private LearnService learnService;
	
	// Save file image 
	public String SaveFileLocaly(HttpServletRequest request)
	{
		String imageFileName = "";
		try {
			Part file = request.getPart("image");
			
			imageFileName = file.getSubmittedFileName();
			String uploadPath = request.getServletContext().getRealPath("/img/") + imageFileName;
			
			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream is = file.getInputStream();
			
			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();	
		}
		catch(Exception e){
			System.out.println(e);
			e.printStackTrace();
		}
		return imageFileName;
	}
	
	
	@GetMapping("/color")
	public ModelAndView show()
	{
		System.out.println("Color Insert Page");
		ModelAndView mv = new ModelAndView();
		mv.addObject("insertItem", "Color");
		mv.addObject("obj", "Deshboard");
		mv.addObject("catagory", 1);
		mv.addObject("path", "/admin/add/learning");
		mv.setViewName("/admin/addLearningItem");
		return mv;
	}
	
	@GetMapping("/fruit")
	public ModelAndView fruit()
	{
		System.out.println("Color Insert Page");
		ModelAndView mv = new ModelAndView();
		mv.addObject("insertItem", "Fruit");
		mv.addObject("obj", "Deshboard");
		mv.addObject("catagory", 2);
		mv.addObject("path", "/admin/add/learning");
		mv.setViewName("/admin/addLearningItem");
		return mv;
	}
	
	@GetMapping("/bird")
	public ModelAndView bird()
	{
		System.out.println("Color Insert Page");
		ModelAndView mv = new ModelAndView();
		mv.addObject("insertItem", "Bird");
		mv.addObject("obj", "Deshboard");
		mv.addObject("catagory", 3);
		mv.addObject("path", "/admin/add/learning");
		mv.setViewName("/admin/addLearningItem");
		return mv;
	}
	
	@GetMapping("/domestic")
	public ModelAndView domestic()
	{
		System.out.println("Color Insert Page");
		ModelAndView mv = new ModelAndView();
		mv.addObject("insertItem", "Domestic Animal");
		mv.addObject("obj", "Deshboard");
		mv.addObject("catagory",4);
		mv.addObject("path", "/admin/add/learning");
		mv.setViewName("/admin/addLearningItem");
		return mv;
	}
	
	@GetMapping("/wildAnimal")
	public ModelAndView wildAnimal()
	{
		System.out.println("Color Insert Page");
		ModelAndView mv = new ModelAndView();
		mv.addObject("insertItem", "Wild Animal");
		mv.addObject("obj", "Deshboard");
		mv.addObject("catagory",5);
		mv.addObject("path", "/admin/add/learning");
		mv.setViewName("/admin/addLearningItem");
		return mv;
	}
	
	@GetMapping("/weather")
	public ModelAndView weather()
	{
		System.out.println("Color Insert Page");
		ModelAndView mv = new ModelAndView();
		mv.addObject("insertItem", "weather");
		mv.addObject("obj", "Deshboard");
		mv.addObject("catagory",6);
		mv.addObject("path", "/admin/add/learning");
		mv.setViewName("/admin/addLearningItem");
		return mv;
	}
	
	@GetMapping("/flowers")
	public ModelAndView flowers()
	{
		System.out.println("Color Insert Page");
		ModelAndView mv = new ModelAndView();
		mv.addObject("insertItem", "Flowers");
		mv.addObject("obj", "Deshboard");
		mv.addObject("catagory",7);
		mv.addObject("path", "/admin/add/learning");
		mv.setViewName("/admin/addLearningItem");
		return mv;
	}
	
	@GetMapping("/vegetables")
	public ModelAndView vegetables()
	{
		System.out.println("Color Insert Page");
		ModelAndView mv = new ModelAndView();
		mv.addObject("insertItem", "vegetables");
		mv.addObject("obj", "Deshboard");
		mv.addObject("catagory",8);
		mv.addObject("path", "/admin/add/learning");
		mv.setViewName("/admin/addLearningItem");
		return mv;
	}
	
	
	@GetMapping("/vehicles")
	public ModelAndView vehicles()
	{
		System.out.println("Color Insert Page");
		ModelAndView mv = new ModelAndView();
		mv.addObject("insertItem", "Vehicles");
		mv.addObject("obj", "Deshboard");
		mv.addObject("catagory", 9);
		mv.addObject("path", "/admin/add/learning");
		mv.setViewName("/admin/addLearningItem");
		return mv;
	}
	
	@GetMapping("/bodyParts")
	public ModelAndView bodyParts()
	{
		System.out.println("Color Insert Page");
		ModelAndView mv = new ModelAndView();
		mv.addObject("insertItem", "bodyParts");
		mv.addObject("obj", "Deshboard");
		mv.addObject("catagory", 10);
		mv.addObject("path", "/admin/add/learning");
		mv.setViewName("/admin/addLearningItem");
		return mv;
	}
	@PostMapping()
	public ModelAndView addColor( HttpServletRequest request, HttpServletResponse responser)throws ServletException, IOException
	{
		
		try {
			// Image Storing 
			String imageFileName = SaveFileLocaly(request);
			
			// Model data inserted into Model class and save into database
			String name = request.getParameter("name");
			String catagory = request.getParameter("catagory");
			
			Learn learn = new Learn();
			learn.setImage(imageFileName);
			learn.setCatagory(catagory);
			learn.setName(name);
			
			try {
				learnService.addOrUpdate(learn);
			}
			catch(Exception ex)
			{
				ex.getMessage();
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("success", "Add Successfully");
		mv.setViewName("/admin/admin");
		return mv;
	}
	
	
	
	
	
	
}
