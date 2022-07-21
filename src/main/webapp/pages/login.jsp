<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/CSS/admin.css">
<link rel="stylesheet" href="/CSS/addLearningItem.css">
</head>
<body>
	
	<div class="container">
		<p class="headingPage"> Login </p>
		
		<form class="form" action="login" method="post" >
		 <p>User Name: <br/> <input type="text" name="username" required/> </p>
		  <p>Password: <br/> <input type="text" name="password" required/> </p>
		 <button class="btn" type="submit">Submit</button>
		</form>
	</div>
</body>
</html>