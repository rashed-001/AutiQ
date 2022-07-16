package com.Autism.AutiQ.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="quiz")
public class Quiz {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="image")
	private String image;
	
	@Column(name="option1")
	private String option1;
	
	@Column(name="option2")
	private String option2;
	
	@Column(name="option3")
	private String option3;
	
	@Column(name="answer")
	private String answer;
	
	@Column(name="point")
	private String point;
	

	@Column(name="catagory")
	private String catagory;


	public Quiz() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Quiz(int id, String image, String option1, String option2, String option3, String answer, String point,
			String catagory) {
		super();
		this.id = id;
		this.image = image;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.answer = answer;
		this.point = point;
		this.catagory = catagory;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	public String getOption1() {
		return option1;
	}


	public void setOption1(String option1) {
		this.option1 = option1;
	}


	public String getOption2() {
		return option2;
	}


	public void setOption2(String option2) {
		this.option2 = option2;
	}


	public String getOption3() {
		return option3;
	}


	public void setOption3(String option3) {
		this.option3 = option3;
	}


	public String getAnswer() {
		return answer;
	}


	public void setAnswer(String answer) {
		this.answer = answer;
	}


	public String getPoint() {
		return point;
	}


	public void setPoint(String point) {
		this.point = point;
	}


	public String getCatagory() {
		return catagory;
	}


	public void setCatagory(String catagory) {
		this.catagory = catagory;
	}


	@Override
	public String toString() {
		return "Quiz [id=" + id + ", image=" + image + ", option1=" + option1 + ", option2=" + option2 + ", option3="
				+ option3 + ", answer=" + answer + ", point=" + point + ", catagory=" + catagory + "]";
	}

	
	
	
}
