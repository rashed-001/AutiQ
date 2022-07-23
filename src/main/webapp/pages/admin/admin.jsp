<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin DeashBoard</title>
<link rel="stylesheet" href="/CSS/admin.css">
</head>
<body>
	<div class="heading">
		<p class="adminDeshbord">${obj}</p>
		<a class="logout" href="/logout"> Logout </a>
	</div>
	
	
	<div class="container">
		<p style="color: green; text-align: center;"> ${success}</p>
		<h2>Add New Item</h2>
		<div class="wrapper">
			
			 <a class="box" href="/admin/add/learning/color">Color</a> 
			 <a class="box" href="/admin/add/learning/fruit">Fruit</a> 
			 <a class="box" href="/admin/add/learning/bird">Bird</a> 
			 <a class="box" href="/admin/add/learning/domestic">Domestic</a> 
			 <a class="box" href="/admin/add/learning/wildAnimal">Wild Animal</a> 
			 <a class="box" href="/admin/add/learning/weather">Weather</a> 
			<a class="box" href="/admin/add/learning/flowers">Flowers</a> 
			<a class="box" href="/admin/add/learning/vegetables">Vegetables</a> 
			<a class="box" href="/admin/add/learning/vehicles">Vehicles</a> 
			<a class="box" href="/admin/add/learning/bodyParts">Body Parts</a> 
		</div>
		<h2>Add New Quiz</h2>
		<div class="wrapper">
			
			 <a class="box" href="/admin/add/quiz/color"> Color Quiz</a> 
			<a class="box" href="/admin/add/quiz/fruit"> Fruit Quiz</a> 
			<a class="box" href="/admin/add/quiz/bodyParts"> Body Parts Quiz</a> 
			<a class="box" href="/admin/add/quiz/different"> All Mixture Quiz</a> 
		</div>
		
	</div>
</body>
</html>