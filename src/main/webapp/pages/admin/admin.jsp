<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/CSS/admin.css">
</head>
<body>
	<div class="heading">
		<p class="adminDeshbord">${obj}</p>
		<a class="logout" href=""> Logout </a>
	</div>
	
	
	<div class="container">
		<h2>Add New Item</h2>
		<div class="wrapper">
			
			 <a class="box" href="/admin/add/learning/color">Color</a> 
			 <a class="box" href="">  Box2</a> 
			 <a class="box" href="">  Box3</a> 
			 <a class="box" href="">  Box4</a> 
		</div>
		<h2>Add New Quiz</h2>
		<div class="wrapper">
			
			 <a class="box" href="/admin/add/quiz/color"> Color Quiz</a> 
			<a class="box" href="/admin/add/quiz/bird"> Bird Quiz</a> 
			 <a class="box" href="">  Box3</a> 
			 <a class="box" href="">  Box4</a> 
		</div>
		
	</div>
</body>
</html>