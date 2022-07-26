<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<link rel="stylesheet" href="/CSS/admin.css">
<link rel="stylesheet" href="/CSS/addLearningItem.css">
 <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="logo" style="margin-left: 50px">
                  <a href="/">  <img class="logo" src="/images/logo2.png" width="125px"  alt="Not found database erroe!!"> </a>
                </div>
                <p style="text-align: center; color: green;">${sc}</p>
	<div class="container">
		<p class="headingPage"> Login </p>
		<form class="form" action="login" method="post" >
		 <p>User Name: <br/> <input type="text" name="username" required/> </p>
		  <p>Password: <br/> <input type="password" name="password" required/> </p>
		 <button class="btn" type="submit">Submit</button>
		 <p style="text-align: center;"> <a style="text-decoration: none;" href="/registration">Or Sign up</a></p>
		</form>
		
	</div>
</body>
</html>