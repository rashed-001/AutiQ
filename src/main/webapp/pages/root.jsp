<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Learning and Quiz</title>
 <link rel="stylesheet" href="/CSS/learning.css">
 <link rel="stylesheet" href="/CSS/root.css">

</head>
<body>
		<div class="heading">
		<div class="heading-left">  <img class="logo" src="/images/logo2.png" alt="Not found database erroe!!"></div>
		<div class="heading-right">
			<p>Welcome Name</p>
			<p>Profile</p>
			<p>Logout</p>
		</div>

	</div>
	<div class="main">
		<div class="container">
			<div class="box1 box activeColor">Learning</div>
			<div class="box2 box">IQ Quiz</div>
		</div>
		<div class="learning active">
			<a  class="box-card"  href="/learning/color">Learn Color</a>
			<a  class="box-card"  href="/learning/fruit">Learn Fruit</a>
			<div class="box-card">L box3</div>
			<div class="box-card">L box4</div>
			
		</div>
		<div class="IqQuiz">
			<a  class="box-card"  href="/quiz/color">Color Quiz</a>
			<a  class="box-card"  href="/quiz/bird">Bird Quiz</a>
			<div class="box-card">Q box3</div>
			<div class="box-card">Q box4</div>
		</div>
	</div>
	
	<!-- script -->
	<script src="/JS/root.js"></script>
</body>

</html>