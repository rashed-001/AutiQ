<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Quiz</title>
<link rel="stylesheet" href="/CSS/admin.css">
<link rel="stylesheet" href="/CSS/addLearningItem.css">
<link rel="stylesheet" href="/CSS/addQuizItem.css">
</head>
<body>
	<div class="heading">
		<p class="adminDeshbord">${obj}</p>
		<a class="logout" href="/logout"> Logout </a>
	</div>
	<div class="container">
		<p class="headingPage">Add New ${insertItem} Quiz</p>

		<form class="form" action="${path}" method="post"
			enctype="multipart/form-data">

			<p>
				Choose ${insertItem} Picture <br /> 
				<input type="file" name="image" accept="image/png, image/jpeg, image/jpg" required />
			</p>
			<p>
				Quiz Option 1 <br /> <input type="text" name="option1" required />
			</p>
			<p>
				Quiz Option 2 <br /> <input type="text" name="option2" required />
			</p>
			<p>
				Quiz Option 2 <br /> <input type="text" name="option3" required />
			</p>
			<p>
			 Select Answer: 
			<select name="answer" class="option" required>
				<option value="1">Option1</option>
				<option value="2">Option2</option>
				<option value="3">Option3</option>
			</select>
			</p>
			<p>
				Quiz Point: <br /> 
				<input type="number" min="1" max="100" name="point" required />
			</p>
			 <input type="hidden" name="catagory" value="${catagory}" />
			<button class="btn" type="submit">Submit</button>
		</form>
	</div>
</body>
</html>