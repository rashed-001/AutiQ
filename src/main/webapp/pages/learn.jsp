<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Learning</title>

    <link rel="stylesheet" href="/CSS/stylelearn.css">
</head>
<body>
     <img class="logo" src="/images/logo2.png"  alt="Not found database erroe!!">

	<h2 class="heading"> Learning ${Name}</h2>
	
    <div class="slideshow-container">
    
		 <div class="numbertext"><span class="Remaing"></span>/ <span class="Length"></span></div>
       
        <div class="mySlides fade">
            <img class="image" src="" alt="Image not Found" />
            <div class="text"> <h4 class="nameItem" ></h4> </div>
        </div>

        <a class="prev" onclick="nextPrev(1)">&#10094;</a>
        <a class="next" onclick="nextPrev(2)">&#10095;</a>

    </div>
    <br>

    <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
    </div>

    <script src="/JS/scriptlearn.js"></script>
    <div>
        <a href="/learningItems" class="btn2"> &#8594;Back </a>

        <a href="/root" class="btn2" > IQ Test &#8594;</a>

        <a href="/" class="btn2" > Home &#8594;</a>
    </div>
    
    
    
    <!-- Featch The data and Show -->
    
    <script type="text/javascript">
		/* Ajax Requext send to get the data using Rest API*/
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