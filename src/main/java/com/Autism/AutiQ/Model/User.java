package com.Autism.AutiQ.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id", unique = true)
	private Long id;
	
	@Column(name="name")
	private String username;
	
	@Column(name="password")
	private String password;
	
	@Column(name="bird")
	private String bird;
	
	@Column(name="flower")
	private String flower;
	
	@Column(name="fruit")
	private String fruit;
	
	@Column(name="animal")
	private String animal;
	
	@Column(name="vehicle")
	private String vehicle;
	
	@Column(name="role")
	private String role;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}


	public User(Long id, String username, String password, String bird, String flower, String fruit, String animal,
			String vehicle, String role) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.bird = bird;
		this.flower = flower;
		this.fruit = fruit;
		this.animal = animal;
		this.vehicle = vehicle;
		this.role = role;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getBird() {
		return bird;
	}

	public void setBird(String bird) {
		this.bird = bird;
	}

	public String getFlower() {
		return flower;
	}

	public void setFlower(String flower) {
		this.flower = flower;
	}

	public String getFruit() {
		return fruit;
	}

	public void setFruit(String fruit) {
		this.fruit = fruit;
	}

	public String getAnimal() {
		return animal;
	}

	public void setAnimal(String animal) {
		this.animal = animal;
	}

	public String getVehicle() {
		return vehicle;
	}

	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", bird=" + bird + ", flower="
				+ flower + ", fruit=" + fruit + ", animal=" + animal + ", vehicle=" + vehicle + ", role=" + role + "]";
	}

	
	
	
}
