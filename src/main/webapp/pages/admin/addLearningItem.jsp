<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add new Items</title>
<link rel="stylesheet" href="/CSS/admin.css">
<link rel="stylesheet" href="/CSS/addLearningItem.css">
</head>
<body>
	<div class="heading">
		<p class="adminDeshbord">${obj} </p>
		<a class="logout" href="/logout"> Logout </a>
	</div>
	<div class="container">
		<p class="headingPage"> Add New ${insertItem} for Learning</p>
		
		<form class="form" action="${path}" method="post" enctype="multipart/form-data">
		 <p>Add ${insertItem} Name: <br/> <input type="text" name="name" required/> </p>
		 <p> Choose ${insertItem} Photo:  <br/> <input type="file" name="image" accept="image/png, image/jpeg, image/jpg" required /></p>
		 <input type="hidden" name="catagory"  value="${ catagory}" />
		 <button class="btn" type="submit">Submit</button>
		</form>
	</div>
</body>
</html>