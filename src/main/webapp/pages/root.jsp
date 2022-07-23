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
				<p><a href="/">Home</a></p>
				<p><a href="/learningItems">Learning</a></p>
				<p><a href="/puzzle">Puzzle</a></p>
				<p><a href="/root">IQ Quiz</a></p>
			<p><a href="/logout">Logout</a></p>
		</div>

	</div>
	<div class="main">
		<div class="container">
			<div class="box1 box activeColor">IQ Quiz</div>
			<div class="box2 box">Puzzle</div>
		</div>
		<div class="learning active">
			<a  class="box-card"  href="/quiz/color">Color IQ</a>
			<a  class="box-card"  href="/quiz/fruit">Fruit IQ</a>
			<a  class="box-card"  href="/quiz/bodyParts">Body Parts IQ</a>
			<a  class="box-card"  href="/quiz/different">All Mixture IQ</a>
			
		</div>
		<div class="IqQuiz">
			<a  class="box-card"  href="/puzzle">Solve Puzzle</a>
			
		</div>
	</div>
	
	<!-- script -->
	<script src="/JS/root.js"></script>
</body>

</html>