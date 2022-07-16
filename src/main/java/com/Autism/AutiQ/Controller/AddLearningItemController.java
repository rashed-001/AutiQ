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
	public ModelAndView show1()
	{
		System.out.println("Color Insert Page");
		ModelAndView mv = new ModelAndView();
		mv.addObject("insertItem", "Color");
		mv.addObject("obj", "Deshboard");
		mv.addObject("catagory", 2);
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
		mv.setViewName("/admin/addLearningItem");
		return mv;
	}
	
	
	
	
	
	
}
