package com.Autism.AutiQ.Controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

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

import com.Autism.AutiQ.Model.Quiz;
import com.Autism.AutiQ.Service.QuizService;



@RestController
@RequestMapping("/admin/add/quiz")
public class AddQuizItemContoller {
	
	@Autowired
	private QuizService quizService;
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
	public ModelAndView ColorQuiz()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("obj", "DeshBoard");
		mv.addObject("insertItem", "Color");
		mv.addObject("catagory", "1");
		mv.addObject("path", "/admin/add/quiz");
		mv.setViewName("/admin/addQuizItem");
		return mv;
	}
	
	@GetMapping("/fruit")
	public ModelAndView FruitQuiz()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("obj", "DeshBoard");
		mv.addObject("insertItem", "Fruit");
		mv.addObject("catagory", "2");
		mv.addObject("path", "/admin/add/quiz");
		mv.setViewName("/admin/addQuizItem");
		return mv;
	}
	@GetMapping("/bodyParts")
	public ModelAndView bodyPartsQuiz()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("obj", "DeshBoard");
		mv.addObject("insertItem", "Body Parts");
		mv.addObject("catagory", "3");
		mv.addObject("path", "/admin/add/quiz");
		mv.setViewName("/admin/addQuizItem");
		return mv;
	}
	
	@GetMapping("/different")
	public ModelAndView differentQuiz()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("obj", "DeshBoard");
		mv.addObject("insertItem", "All Mixture");
		mv.addObject("catagory", "4");
		mv.addObject("path", "/admin/add/quiz");
		mv.setViewName("/admin/addQuizItem");
		return mv;
	}
	@PostMapping()
	public ModelAndView addColor( HttpServletRequest request, HttpServletResponse responser)throws ServletException, IOException
	{
		
		try {
			// Image Storing 
			String imageFileName = SaveFileLocaly(request);
			
			// Model data inserted into Model class and save into database
			String option1 = request.getParameter("option1");
			String option2 = request.getParameter("option2");
			String option3 = request.getParameter("option3");
			String answer = request.getParameter("answer");
			String point = request.getParameter("point");
			String catagory = request.getParameter("catagory");
			
			
			Quiz quiz = new Quiz();
			quiz.setImage(imageFileName);
			quiz.setCatagory(catagory);
			quiz.setOption1(option1);
			quiz.setOption2(option2);
			quiz.setOption3(option3);
			quiz.setPoint(point);
			quiz.setAnswer(answer);
			
			
			try {
				quizService.addOrUpdate(quiz);
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
