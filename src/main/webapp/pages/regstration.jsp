<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
		<div>
		
			<form action="/user/regstration" method="Post">
				<p> Enter Your Name: <input name="name" /> </p>
				<p> Enter your Age: <input name="age" /></p>
				<p> Enter your Salary: <input name="salary" /></p>
			<!-- <input type="file" name="image" accept="image/png, image/jpeg" /> -->	
				<button type="submit">Submit</button>
			</form>
		</div>
</body>
</html>