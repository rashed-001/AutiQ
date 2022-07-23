<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="/CSS/learning.css">
<link rel="stylesheet" href="/CSS/quiz.css">

</head>
<body>
	<p>${obj}</p>

	<div class="heading">
		<div class="heading-left">  <img  class="logo" src="/images/logo2.png"  alt="Not found database erroe!!"></div>
		<div class="heading-right">
			<p><a href="/">Home</a></p>
			<p><a href="/learningItems">Learning</a></p>
			<p><a href="/puzzle">Puzzle</a></p>
			<p><a href="/root">IQ Quiz</a></p>
			<p><a href="/logout">Logout</a></p>
		</div>
	</div>

	<div class="container">
		<div class="container-main">
			<h3 class="headingCenter">${name} IQ Quiz</h3>
			<div class="view">
				<p class="remainingScore">
					<span>Your Score: <b class="result1"></b></span>
				</p>
				<p class="remaining">
					<span class="Remaing"></span>/<span class="Length"></span>
				</p>
				<div class="viewArea">
					<p class="dataShow">
						<img class="image" src="" alt="Image not Found" />
						<span class="hide">Your Score: <b class="result"></b></span>
					</p>
				</div>

				<div class="selectCheckBox">
					<form class="form">
						<p>Select Your Answer: </p>
						<p class="checkBox"> <input  type="checkbox" value="1" name="check" onclick="onlyOne(this)"> <span class="option1">A</span> </p>
						<p class="checkBox"> <input  type="checkbox" value="2" name="check" onclick="onlyOne(this)"> <span class="option2">B</span> </p>
						<p class="checkBox"> <input  type="checkbox" value="3" name="check" onclick="onlyOne(this)"> <span class="option3">C</span> </p>
						
						<button type="submit" class="prev btn-desing" >Submit</button>
					</form>
				</div>
			</div>
		</div>
		<div class="container-sideber"></div>
	</div>

	<script type="text/javascript">
		/* Ajax Requext send to get the data */
		let catagory = ${catagory};
		let obj = [];
		let index = 0;
		let ansPoint = 0;
		let srcImage = "/img/"
		let SRC = "";
		function loadDoc() {

			const xhttp = new XMLHttpRequest();
			xhttp.onload = function() {
				let obj1 = JSON.parse(this.response);
				for(let ind = 0; ind < obj1.length; ind++)
				{
					if(obj1[ind].catagory == catagory)
						obj.push(obj1[ind]);
				}
				console.log(obj);
				document.querySelector(".Length").innerHTML = obj.length;
				document.querySelector(".Remaing").innerHTML = index + 1;
				document.querySelector(".result1").innerHTML = ansPoint;
				document.querySelector(".option1").innerHTML = obj[index].option1;
				document.querySelector(".option2").innerHTML = obj[index].option2;
				document.querySelector(".option3").innerHTML = obj[index].option3;
				SRC = srcImage + obj[index].image; 
				document.querySelector(".image").src = SRC;
			}
			xhttp.open("GET", "/quiz/all");
			xhttp.send();

		}
		loadDoc(); // call and get data
		
		let runTime = 0
		let Interval;
		function winningReward()
		 {
			runTime++;
			if(runTime == 60)
				clearInterval(Interval);
			 const heart = document.createElement('div');
			 heart.classList.add("heart");
			 heart.style.left = Math.random() * 100 + "vw"; 
			 heart.style.animationDuration = Math.random() * 2 + 3 + "s";
			 heart.innerHTML = '<img width="28px" height="28px" src="/images/imo.png" alt="Image not Found" />';
			 document.body.appendChild(heart); 
			 
			 setTimeout(() => {
				 heart.remove();
			 }, 5000)
			
		 }
		
		document.querySelector('form').addEventListener('submit', (e) => {
			  const data = Object.fromEntries(new FormData(e.target).entries());
			  e.preventDefault();
			  console.log(data);
			  if(isSelect() === 1)
			  {
				  let cnt = 0;
				  for(let value of obj)
				  {
					  if(index === cnt)
					  {
						  console.log(data.check);
						  if(data.check == obj[index].answer)
						  {
							  ansPoint += (+obj[index].point);
							  console.log("inc Ans = " + ansPoint);
						  }
						  	
					  }
					  cnt++;
				  }
				 if(index === obj.length-1)
				 {
					 Interval = setInterval(winningReward, 50);
					 document.querySelector(".selectCheckBox").style.display = 'none';
					 document.querySelector(".image").style.display = 'none'; 
					 document.querySelector(".remaining").style.display = 'none'; 
					 document.querySelector(".remainingScore").style.display = 'none'; 
					 document.querySelector(".hide").classList.add("score");
					 document.querySelector(".result").innerHTML = ansPoint;
					 
					 console.log("Ans = " + ansPoint);
					 // button diable game finish
				 }
				 empty(); // call for check box emtpty 
				 
				  if(index < obj.length-1)
					{
						index++;
						document.querySelector(".Remaing").innerHTML = index+1; 
						document.querySelector(".result1").innerHTML = ansPoint;
						document.querySelector(".option1").innerHTML = obj[index].option1;
						document.querySelector(".option2").innerHTML = obj[index].option2;
						document.querySelector(".option3").innerHTML = obj[index].option3;
						
						SRC = srcImage + obj[index].image; 
						document.querySelector(".image").src = SRC;
						
						// button enable
					}
					else{
						
						index = obj.length-1;
						document.querySelector(".Remaing").innerHTML = index+1; 
						document.querySelector(".result1").innerHTML = ansPoint;
						document.querySelector(".option1").innerHTML = obj[index].option1;
						document.querySelector(".option2").innerHTML = obj[index].option2;
						document.querySelector(".option3").innerHTML = obj[index].option3;
						
						SRC = srcImage + obj[index].image; 
						document.querySelector(".image").src = SRC;
						
						// button disable ;
					}
			  }
			  else{
				  alert( 'Please Select your Answer:' );
			  }
			  
			});
		
		 function onlyOne(checkbox) 
		 {
			    var checkboxes = document.getElementsByName('check')
			    checkboxes.forEach((item) => {
			        if (item !== checkbox) item.checked = false
			    })
		}
		 function empty()
		 {
			 var checkboxes = document.getElementsByName('check')
			    checkboxes.forEach((item) => {
			        item.checked = false
			    })
		 }
		 function isSelect()
		 {
			 var checkboxes = document.getElementsByName('check')
			 	let flag = 0
			    checkboxes.forEach((item) => {
			        if(item.checked == true) flag = 1;
			    })
			    return flag;
		 }
		 
		 
		 

	</script>
</body>
</html>