<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/CSS/learning.css">

</head>
<body>
	<p>${obj}</p>
	
	<div class="heading">
		<div class="heading-left">  <img class="logo" src="/images/logo2.png" alt="Not found database erroe!!"></div>
		<div class="heading-right">
			<p>Welcome Name</p>
			<p>Profile</p>
			<p>Logout</p>
		</div>
	</div>

	<div class="container">
		<div class="container-main">
			<div class="view">
				<p class="remaining"><span class="Remaing"></span>/<span class="Length"></span></p>
				<div class="viewArea">
					<p class="dataShow">
					<img class="image" src="" alt="Image not Found" />
					</p>
				</div>
				<p class="nameItem"></p>
			</div>
			<div class="btn">
				<button class="prev btn-desing" onclick="nextPrev(1)" > Prev </button>
				<button class="next btn-desing" onclick="nextPrev(2)" > Next </button>
			</div>
		</div>
		<div class="container-sideber"></div>
	</div>

	<script type="text/javascript">
		/* Ajax Requext send to get the data */
		let catagory = ${catagory};
		let obj = [];
		let index = 0;
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
				document.querySelector(".Remaing").innerHTML = index+1; 
				document.querySelector(".nameItem").innerHTML = obj[index].name;
				SRC = srcImage + obj[index].image; 
				document.querySelector(".image").src = SRC;
				
			}
			xhttp.open("GET", "/learning/all");
			xhttp.send();
			
		}
		loadDoc();
		
		function nextPrev(id)
		{
			console.log(obj);
			console.log("prev");
			// document.querySelector(".dataShow").innerHTML = obj;

			if(id === 1)
			{
				if(index > 0)
				{
					index--;
					document.querySelector(".Remaing").innerHTML = index+1; 
					document.querySelector(".nameItem").innerHTML = obj[index].name;
					SRC = srcImage + obj[index].image; 
					document.querySelector(".image").src = SRC;
				
					// button enable
				}
				else{
					index = 0;
					document.querySelector(".Remaing").innerHTML = index+1; 
					document.querySelector(".nameItem").innerHTML = obj[index].name;
					SRC = srcImage + obj[index].image; 
					document.querySelector(".image").src = SRC;
					
					// button disable ;
				}
		
			}
			else if(id === 2)
			{
				console.log("Next");
				
				if(index < obj.length-1)
				{
					index++;
					document.querySelector(".Remaing").innerHTML = index+1; 
					document.querySelector(".nameItem").innerHTML = obj[index].name;
					SRC = srcImage + obj[index].image; 
					document.querySelector(".image").src = SRC;
					
					// button enable
				}
				else{
					index = obj.length-1;
					document.querySelector(".Remaing").innerHTML = index+1; 
					document.querySelector(".nameItem").innerHTML = obj[index].name;
					SRC = srcImage + obj[index].image; 
					document.querySelector(".image").src = SRC;
					
					// button disable ;
				}
			}
		}
	</script>
</body>
</html>